## A/B Test #1: 
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

