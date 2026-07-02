# פריסה ל-Cloudflare Pages (Git-connected)

האתר הוא HTML סטטי (index.html + assets/). Cloudflare Pages מחובר ל-repo הזה ב-GitHub
ומפרסם אוטומטית בכל `git push` ל-`main`.

## חיבור ראשוני (פעם אחת, ב-dashboard)
1. https://dash.cloudflare.com → **Workers & Pages** → **Create** → לשונית **Pages** → **Connect to Git**.
2. אשר את GitHub ובחר את המאגר **`roeeiluz/obstetric_calc`**, ענף **`main`**.
3. **Build settings** — קריטי לאתר סטטי:
   - Framework preset: **None**
   - Build command: **(השאר ריק)**
   - Build output directory: **`/`**
4. **Save and Deploy**. תוך ~1 דקה מתקבל URL: `https://obstetric-calc.pages.dev` (או שם דומה).

## עבודה שוטפת (דרך Claude Code)
זהה לתהליך הקיים — עורכים את `index.html`, ואז:
```
git add -A && git commit -m "..." && git push
```
Cloudflare מזהה את ה-push ומפרסם אוטומטית תוך ~30 שניות. אין טוקנים לנהל.

## הערות
- `_headers` — קאשינג ארוך ל-`assets/`, ורענון מיידי של ה-shell כדי שבּאמפ-גרסה יופיע מיד.
- GitHub Pages (`roeeiluz.github.io/obstetric_calc`) ממשיך לעבוד במקביל כגיבוי.
- `high_risk_combined.html` (23MB) אינו מקושר מ-index; הוא ייפרס אך נגיש רק בכתובת ישירה.
- דומיין מותאם (אופציונלי): ב-Pages → Custom domains → Add domain.
