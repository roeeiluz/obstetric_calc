# פריסה ל-Cloudflare Pages

**חי:** https://obstetric-calc.pages.dev
**פרויקט:** `obstetric-calc` (חשבון Roee.iluz@gmail.com, direct-upload דרך wrangler — כמו iluz-hr-docs / maq-trainee / obgyn-orientation).

## עבודה שוטפת (דרך Claude Code)
1. עורכים את `index.html`.
2. פורסים:
   ```
   ./deploy-cloudflare.sh
   ```
   הסקריפט אורז staging נקי (index.html + assets/ + _headers) ומריץ `wrangler pages deploy`.
   האתר מתעדכן תוך ~שנייה. (הפעלה ראשונה עשויה לדרוש אישור פריסה ב-Claude Code — אפשר להוסיף כלל הרשאה קבוע ל-`wrangler pages deploy`.)
3. מומלץ גם `git push` כדי לשמור את GitHub כמקור-אמת (וכגיבוי GitHub Pages).

## מה נפרס
`index.html` + `assets/iptus/` (14 תמונות). **לא** נפרסים: `high_risk_combined.html` (23MB, לא מקושר), מסמכי docs, zip.

## קבצים
- `_headers` — קאשינג ארוך ל-`assets/`, רענון מיידי של ה-app shell.
- `deploy-cloudflare.sh` — פריסה בפקודה אחת.

## גיבוי
GitHub Pages (`roeeiluz.github.io/obstetric_calc`) ממשיך לעבוד במקביל. דומיין מותאם (אופציונלי): Cloudflare dashboard → Pages → obstetric-calc → Custom domains.
