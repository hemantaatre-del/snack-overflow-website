-- Run in Supabase SQL Editor. Service-role key stays on server only.
create extension if not exists pgcrypto;
create table if not exists public.products (id uuid primary key default gen_random_uuid(),name text not null,category text not null,price numeric(10,2) not null check(price>=0),weight text not null default 'Pack',description text not null default '',image_url text,stock integer not null default 0 check(stock>=0),active boolean not null default true,featured boolean not null default false,created_at timestamptz not null default now());
create table if not exists public.orders (id uuid primary key default gen_random_uuid(),customer_name text not null,phone text not null,address text not null,items jsonb not null,total numeric(10,2) not null,status text not null default 'New',created_at timestamptz not null default now());
alter table public.products enable row level security;
alter table public.orders enable row level security;
-- No anonymous policies: all data accessed through server routes using service role.
insert into storage.buckets (id,name,public,file_size_limit,allowed_mime_types) values ('product-images','product-images',true,5000000,array['image/jpeg','image/png','image/webp']) on conflict(id) do nothing;
-- Images are publicly readable, but uploads require authenticated server-side authorization.
