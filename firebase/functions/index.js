const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("profile_creation/" + user.uid);
  await firestore.collection("profile_creation").doc(user.uid).delete();
});
