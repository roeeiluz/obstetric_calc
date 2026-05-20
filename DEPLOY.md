<div dir="rtl">

# הוראות פריסה ל-GitHub Pages

הקובץ `index.html` הוא עצמאי לחלוטין — אין צורך בשרת או build process. הוא יעבוד מיד אחרי שתעלה אותו ל-GitHub Pages.

## שלבי הפריסה (5 דקות)

### 1. צור חשבון GitHub (אם אין לך)
[github.com/signup](https://github.com/signup) · חינמי

### 2. צור ריפוזיטורי חדש
- לחץ "+" → "New repository"
- שם: `obstetrics_calculator` (או כל שם — זה ישפיע על ה-URL הסופי)
- Public ✓ (חובה ל-Pages חינמי)
- אל תסמן "Add a README" — קיים כבר
- "Create repository"

### 3. העלה את הקבצים (2 דרכים)

#### דרך A — דרך הדפדפן (קל למתחילים)
1. בדף הריפו הריק → "uploading an existing file"
2. גרור את כל התוכן של תיקיית `github-repo/`:
   - `index.html`
   - `README.md`
   - `LICENSE`
   - `VALIDATION.md`
   - `CONTRIBUTING.md`
   - `DEPLOY.md`
   - `.nojekyll`
3. הקלד הודעת commit: `Initial commit — Obstetric Calculator v3.0`
4. "Commit changes"

#### דרך B — דרך הטרמינל (מומלץ לרופאים שמכירים git)
```bash
cd /Users/mac_iluz/Library/CloudStorage/OneDrive-Personal/CLAUDE\ WORKSHOP/מחשבון\ רפואי/github-repo
git init
git add .
git commit -m "Initial commit — Obstetric Calculator v3.0"
git branch -M main
git remote add origin https://github.com/USERNAME/obstetrics_calculator.git
git push -u origin main
```

החלף `USERNAME` בשם המשתמש שלך ב-GitHub.

### 4. הפעל GitHub Pages
1. ברפוזיטורי → Settings (סרגל עליון)
2. Pages (תפריט שמאלי)
3. Source: "Deploy from a branch"
4. Branch: `main`, Folder: `/ (root)`
5. Save

תוך 1–2 דקות, הקישור יהיה זמין:
```
https://USERNAME.github.io/obstetrics_calculator/
```

GitHub יציג את הקישור הירוק בעמוד "Pages" אחרי שהפריסה תושלם.

### 5. עדכן את הלינק ב-README
חזור לקובץ `README.md` בריפו → ערוך (אייקון העיפרון) → החלף `YOUR-USERNAME` בשם המשתמש שלך → Commit.

זהו! האפליקציה זמינה לכל המתמחים במחלקה.

---

## ✏️ עדכונים עתידיים

לעדכון תוכן (לדוגמה, הוספת מחשבון חדש):
1. ערוך את `index.html` בריפוזיטורי או מקומית
2. Commit & Push
3. GitHub Pages יתעדכן אוטומטית תוך כדקה

---

## 🔒 הערות אבטחה ופרטיות

- **אין שמירת נתונים** — האפליקציה רצה לחלוטין בדפדפן של המשתמש, ללא שרת
- **אין שליחת נתוני מטופלים** — כל החישובים מקומיים
- **HTTPS אוטומטי** — GitHub Pages נותן SSL חינמי
- **בלי tracking** — אין Google Analytics או כדומה

מתאים לשימוש קליני בכפוף להנחיות הפרטיות של בית החולים שלך.

---

## 🌐 דומיין מותאם (אופציונלי)

אם תרצה דומיין משלך (למשל `calc.hospital-name.com`):
1. רכוש דומיין
2. ב-Settings → Pages → Custom domain: הזן את הדומיין
3. הגדר CNAME record בספק הדומיין שמצביע על `USERNAME.github.io`

---

## 📞 תמיכה

לבעיות פריסה: [GitHub Pages docs](https://docs.github.com/en/pages)

</div>
