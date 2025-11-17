# A/B Test #1: Add Review Button Text – “Add Review” vs. “Write a Review” (Alex)

## User Story Number  
**US4 – Golden Path**

## Metrics  
- **Adoption:** How many users submit their first review.  
- **Engagement:** Number of reviews created per active user.  
- **Retention:** How many users return within a week after posting a review.  
- **CTR (Click-Through Rate):** How often users tap the “Add Review” button compared to how many open the app.

## Hypothesis  
If the button text feels more inviting or action-oriented, more users will start writing reviews. We think **“Write a Review”** may encourage higher engagement because it sounds more personal and creative than **“Add Review.”**

Currently, the button says **“Add Review,”** which might feel more transactional or less engaging. By testing both phrases, we can see which version drives more user interaction and leads to more reviews being created.

## Experiment Setup  
We’ll use **Firebase Remote Config** and **Firebase A/B Testing** to test two text variations of the **“Add Review”** button in the FlutterFlow app.

- **Group A (50% of users):** Button text – “Add Review”  
- **Group B (50% of users):** Button text – “Write a Review”  

We’ll track the results using **Firebase Analytics** and the metrics listed above.  
The test will run for **two weeks**, and we’ll compare which button text leads to higher click-through and review submission rates.

## Variations  
### Variation A – “Add Review”  
- Current version.  
- Clear and simple, but possibly less engaging.

### Variation B – “Write a Review”  
- More expressive and personal phrasing.  
- Expected to increase review creation and retention.

---

After the test, we’ll analyze which version performs better and set that button text as the default in the app.


---

**A/B Test #2**
**Display Name Color**

**User Story Number**
- US3: Profile Creation

### Metrics
**HEART Metric:** Engagement  
We will measure engagement by tracking how long users spend on their profile page and the number of times users interact with profile-related elements (e.g., likes, edits, or clicks).  


### Hypothesis
Changing the display name color to a more visually appealing color (e.g., blue) will make the profile page more engaging and encourage users to spend more time viewing or interacting with it.  

### What Problem Are We Trying to Solve?
Some users may find the current profile page visually bland or unengaging. This could reduce how long they stay on the app or interact with profile content.  
By testing a color change for the display name, we aim to determine whether small UI design adjustments can increase user engagement and satisfaction.  

**Impact:**  
Improving engagement through better visual appeal can increase user satisfaction and retention over time.

### Experiment
We will use **Firebase Remote Config** and **Firebase Analytics** to perform this A/B test.

- **Audience:** 50% of users (randomly assigned) will see the control version, and 50% will see the test version.  
- **Group A (Control):** Default black display name.  
- **Group B (Test):** Blue display name.  
- **Tracking:**  
  - Profile page view time (seconds)  
  - Clicks or taps on profile elements  
  - Retention (how often users return to their profile)  

Data will be analyzed after 1–2 weeks to determine which version performs better under the HEART “Engagement” metric.

### Variations
**Variation A (Control):**
- Display name color: **Black (#000000)**  

**Variation B (Test):**
- Display name color: **Blue (#007BFF)**  

**Design Preview:**
- The only visual difference between A and B is the name color. All other UI elements remain consistent to ensure test validity.

---

***A/B Test #3*** :
**See Review Functionality - Button or Whole Card**

**User Story Number**

US4 - Golden Path

**Metrics**

*Engagement:* How many users are interacting with reviews in general
*CTR (Click-Through Rate):* How many users are opening a review to see the details

**Hypothesis**
- Users may not interact with created reviews in any meaningful way if opening them to see the details is too cumbersome.
- This may be caused by having a dedicated button to open a review. It could be too small or cumbersome to interact with. It may be more intuitive and in-line with other apps to be able to tap anywhere on the review card to open it.

**Experiment Setup**

We’ll use Firebase Remote Config and Firebase A/B Testing to test two versions of the ReelRanker app.
- *Group A (50% of users):* "See Review" button
- *Group B (50% of users):* Tap review card

**Variations**  
*Variation A – See Review Button*
- “See Review” button displayed on each review card.  
- Only tapping on that button will open review details.
- Expected to be cumbersome to use and reduce engagement and CTR.

*Variation B – Tap Review Card*  
- Can tap anywhere on the review card to open review details.
- Expected to be more intuitive to use and increase engagement and CTR.
- Reduces clutter on each review card.

***A/B Test #4*** :
**Number of Reviews completed**

**User Story Number**

US4 - Golden Path

**Metrics**

*Task Success:* How many users are creating reviews in general
*CTR (Click-Through Rate):* How many users are making multiple reviews/making reviews quickly

**Hypothesis**
- Users may not create many reviews if the process of creating a review is too complicated or unintuitive.
- This may be caused by certain buttons not having distinct labels. They could be misleading or vague. It could be a good idea to make their labels clear and to the point.
**Experiment Setup**

We’ll use Firebase Remote Config and Firebase A/B Testing to test two versions of the ReelRanker app.
- *Group A (50% of users):* Standard issue labels
- *Group B (50% of users):* More descriptive labels

**Variations**  
*Variation A – Standard issue labels*
- All in-app buttons with normal labels.  
- Figuring out which button does what essential to successful app progression.
- Expected to make review creation slightly more complicated and possibly unintuitive.

*Variation B – More descriptive labels*  
- All in-app buttons have slightly longer labels and/or images attached to communicate use.
- Expected to be more intuitive to use and increase engagement and CTR.
- Improves how easy it is to create reviews.
