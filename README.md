# 021_trade_flutter_task
From the image provided (web version), I began by dividing the interface into sections to conceptualize how it should translate into a mobile layout.

🧭 Navigation Bar (Header)
On the web, the navbar includes the logo and stock indices on the left. For the mobile version, I took inspiration from the Kite app by Zerodha, which I personally use for trading. Its clean and minimal design influenced my approach — I created a sleek app bar that can be extended to show charts or additional stock information if needed.

📂 Navigation Sections
The web version also has sections like Marketwatch, Portfolio, and Profile. I mapped these into a bottom navigation bar in the mobile version to ensure easy access and better usability for small screens.

📄 Orders Page (Core Task)
For the core Orders page provided in the task:

I first implemented the search bar with selectable chips, replicating the stock filter section seen on the web.

The open/active orders are displayed as individual cards, with:

Color-coded indicators based on the order type (e.g., green for BUY, red for SELL).

All relevant metadata (e.g., Product, Price, Quantity, Client ID, Time) cleanly presented within each card.

✅ UI/UX Considerations
I focused on creating a clean, touch-friendly, and responsive interface for mobile users while ensuring all important information from the web version was retained.

📁 Project Structure
Since this task involved only one page, I still maintained modularity by:

Separating components into Widgets, Pages, and Models.

Making the code scalable and reusable, in case the app needs to be extended further.

