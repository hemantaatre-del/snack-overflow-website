# Snack Overflow — Website + Admin (Version 1)

A Next.js + Supabase storefront with a persistent product catalogue, secure admin authentication, product image uploads, stock management, shopping cart, WhatsApp checkout and order tracking.

## Setup

1. Install Node.js 20+.
2. Create a Supabase project at supabase.com. Open SQL Editor and run `sql/setup.sql`.
3. In Supabase Authentication > Users, invite/create your administrator account with email/password. Ensure email is confirmed.
4. Copy `.env.example` to `.env.local` and enter your Supabase Project URL, anon key, **server-side service role key**, and exact `ADMIN_EMAIL`. Never expose the service role key in a `NEXT_PUBLIC_` variable or commit `.env.local`.
5. Run `npm install` then `npm run dev`. Visit `http://localhost:3000/admin` and log in.
6. Add products through Admin. The starter catalogue is in `lib/data.ts` as reference data; the live site intentionally reads the database only. To populate all 23 products quickly, use `sql/seed.sql` before editing them in Admin.
7. Nine real product images are already included under `public/products/` and assigned by `sql/seed.sql`. The second Black Pepper photo is included as an alternative. Upload images for the remaining products through Admin. The current text logo is a placeholder.
8. Deploy to Vercel, configure the same environment variables there, and connect a custom domain. Verify Supabase and site URL/auth configuration.

## WhatsApp order behavior

The server saves an order request and returns a reference number; the browser opens WhatsApp with a prefilled message. **The customer must press Send in WhatsApp.** Order requests are not automatically confirmed. Delivery charge is not added to the subtotal; confirm it manually (₹20 beyond 5 km where applicable). Orders are not automatically deducted from stock; update stock from Admin after confirmation.

## Security and production notes

Admin mutations and order viewing require a valid Supabase user access token whose verified email equals `ADMIN_EMAIL`. Database tables have RLS enabled and no public policies; server routes use the secret service role key. Public order creation validates product IDs and recalculates prices server-side. Add CAPTCHA/rate limiting and anti-spam controls before heavy public traffic. Configure privacy policy, retention, backups, domain, legal business disclosures and delivery/return policy before production launch. Image upload is limited to 5MB JPEG/PNG/WEBP. This project has not been deployed or end-to-end tested against your Supabase instance.

## Product photography

The ten supplied photos have been gently brightened, contrast-adjusted and cropped for catalogue use without changing the product labels or packaging. Original uploaded photos were not modified. Included: Broccoli, Beetroot, Multigrain, Ragi, Jowar, and Banana Wafers (Salted, Masala, Pudina, Black Pepper plus an alternate Black Pepper view). Run `sql/seed.sql` to associate these local photos with the initial products.
