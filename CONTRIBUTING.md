<div dir="rtl">

# הנחיות לתרומה

תודה על הרצון לתרום למחשבון מיילדות! המסמך הזה מסביר איך להוסיף/לעדכן תכנים.

## מבנה הקוד

הפרויקט הוא קובץ HTML יחיד עצמאי (`index.html`) הכולל:
- **CSS** בתוך תג `<style>` בראש המסמך
- **HTML** של 14 הפאנלים
- **JavaScript** בסוף המסמך (כ-4,000 שורות)

אין תלות בספריות חיצוניות, אין build process, ואין שרת.

## הוספת מחשבון חדש

### 1. הוסף טאב ב-`<nav class="tabs">`
מצא את הקבוצה המתאימה (ביומטריה ודופלר / סיכוני הריון / מחשבוני לידה) והוסף:

```html
<button class="tab" onclick="showTab('myTool',this)" role="tab">
  <svg viewBox="0 0 20 20" ...>...icon...</svg>
  <span>שם הכלי</span>
</button>
```

### 2. הוסף פאנל ב-HTML
בסוף הסעיפים הקיימים, הוסף:

```html
<div id="myTool" class="panel">
  <details class="ref-wrap">
    <summary>...מקורות...</summary>
    <div class="ref">פרטים על המקורות המדעיים</div>
  </details>

  <div class="row"><label>...</label><input ...></div>
  <button class="btn btn-primary" onclick="calcMyTool()">חשב</button>
  <div id="myTool-res"></div>
</div>
```

### 3. הוסף לוגיקה ב-JS
הוסף בתוך תג `<script>`:

```js
function calcMyTool(){
  const el = document.getElementById('myTool-res');
  // קלט, חישוב, פלט
  el.innerHTML = `<div class="result">...</div>`;
}
```

### 4. עדכן את `README.md` ו-`VALIDATION.md`
- הוסף שורה בטבלת הכלים ב-README
- הוסף את המקור המדעי + מבחן סנייטי ב-VALIDATION

## עדכון ערכי ייחוס

כאשר מתפרסמות הנחיות חדשות:

1. עדכן את המקור המתאים ב-`<details class="ref-wrap">`
2. עדכן את הערכים ב-JS (טבלאות / נוסחאות)
3. עדכן את `VALIDATION.md` עם המקור החדש ומבחן

## בדיקת לפני commit

לפני שאתה שולח שינויים, ודא:

- [ ] אין שגיאות JS (פתח את ה-console בדפדפן)
- [ ] כל הטאבים נטענים ומציגים תוצאות
- [ ] בדיקה במובייל (DevTools → Responsive mode)
- [ ] בדיקה ב-Dark mode (DevTools → Emulate `prefers-color-scheme: dark`)
- [ ] בדיקה ב-RTL (יושר עברית, lookahead)

## סטיילגיידס

- **CSS:** השתמש ב-CSS variables (`var(--primary)`, `var(--red)` וכו') — אל תכתוב צבעים ישירים
- **כפתורים:** `.btn .btn-primary` לכפתור ראשי
- **כרטיסים:** `.result` / `.chart-card` / `.rec-box` לסוגים שונים
- **תגיות:** `.badge .b-ok / .b-warn / .b-bad` לסטטוס
- **גריד:** `.detail-grid` / `.detail-grid.two` / `.detail-grid.four`
- **טיפוגרפיה:** השתמש בקלאסים קיימים — לא להוסיף `font-size` ישיר

## פילוסופיה

> כלי קליני טוב הוא כזה שגורם לרופא להחליט מהר ובאופן מבוסס.

לכן:
- **כל מספר חייב מקור** — אל תכלול ערכים ללא ציטוט
- **התוצאות צריכות להיות גלויות מיד** — לא חבויות אחרי לחיצות
- **קוד צבע ברור** — ירוק/אמבר/אדום
- **התראות חמורות בולטות** — `note` עם `border-right-color: var(--red)`

## דיווח על באג

יצירת issue ב-GitHub עם:
- תיאור הבעיה
- שלבי שחזור
- צילום מסך (אם רלוונטי)
- דפדפן + מערכת הפעלה
- ההכנסה (אם רלוונטי)

</div>
