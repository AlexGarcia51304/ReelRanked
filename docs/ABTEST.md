## A/B Test : ReelRanker


***A/B Test #1*** : 
**Post Button Placement – Nav Bar vs. Profile Page**

**User Story Number**
- US4 – Golden Path

**Metrics**
- *Adoption:* How many users post their first review.  
- *Engagement:* Number of posts created per active user.  
- *Retention:* How many users come back within a week after posting.  
- *CTR (Click-Through Rate):* How often users click the “Create Post” button compared to how many open the app.  

**Hypothesis**  
- If the “Create Post” button is easier to find in the navigation bar, more users will post reviews and stay active on the app. We think this version will improve engagement and retention because it makes posting faster and more obvious.
- Right now, if the “Create Post” button is only on the profile page, users might not notice it or take the extra step to post. This could make the app feel less interactive. By testing both placements, we can find which version helps users post more easily and increases the overall activity on ReelRanker.

**Experiment Setup**
We’ll use Firebase Remote Config and Firebase A/B Testing to test two versions of the ReelRanker app.
- *Group A (50% of users):* “Create Post” button is in the **navigation bar**, next to Feed, Search, and Profile.  
- *Group B (50% of users):* “Create Post” button is only on the **profile page**, where the user’s past reviews appear.  
We’ll track the results using Firebase Analytics and the metrics listed above. The experiment will run for two weeks, and we’ll compare how many users create posts and return to the app after posting.

**Variations**  
*Variation A – Nav Bar Button*
- “+ Post” button shown in the main navigation bar.  
- Always visible while users browse.  
- Expected to increase posting and engagement.  
*Variation B – Profile Button*  
- “Create Post” button shown only on the profile page.  
- Takes an extra step to reach but keeps the main screen cleaner.  
After the test, we’ll review which version performs better and use that layout in the final app.

***A/B Test #2***
**Display Name Color**

**User Story Number**
- US3: Profile Creation

## 🧩 Metrics
**HEART Metric:** Engagement  
We will measure engagement by tracking how long users spend on their profile page and the number of times users interact with profile-related elements (e.g., likes, edits, or clicks).  

---

## 💡 Hypothesis
Changing the display name color to a more visually appealing color (e.g., blue) will make the profile page more engaging and encourage users to spend more time viewing or interacting with it.  

---

## ❓ What Problem Are We Trying to Solve?
Some users may find the current profile page visually bland or unengaging. This could reduce how long they stay on the app or interact with profile content.  
By testing a color change for the display name, we aim to determine whether small UI design adjustments can increase user engagement and satisfaction.  

**Impact:**  
Improving engagement through better visual appeal can increase user satisfaction and retention over time.

---

## 🔬 Experiment
We will use **Firebase Remote Config** and **Firebase Analytics** to perform this A/B test.

- **Audience:** 50% of users (randomly assigned) will see the control version, and 50% will see the test version.  
- **Group A (Control):** Default black display name.  
- **Group B (Test):** Blue display name.  
- **Tracking:**  
  - Profile page view time (seconds)  
  - Clicks or taps on profile elements  
  - Retention (how often users return to their profile)  

Data will be analyzed after 1–2 weeks to determine which version performs better under the HEART “Engagement” metric.

---

## 🎨 Variations
**Variation A (Control):**
- Display name color: **Black (#000000)**  

**Variation B (Test):**
- Display name color: **Blue (#007BFF)**  

**Design Preview:**
- The only visual difference between A and B is the name color. All other UI elements remain consistent to ensure test validity.

---

