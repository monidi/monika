trigger Batch on Account (before update, before insert, after insert, after update) {


OwnerReassignment reassign = new OwnerReassignment();
User u= [SELECT Id, Name FROM User WHERE id='005o0000000JXg1'];
User u2=[SELECT Id, Name FROM User WHERE id='005o0000000JRpB'];
reassign.query = 'SELECT Id, Name, Ownerid FROM Account ' + 
                'WHERE ownerid=\'' + u.id + '\'';
reassign.email='test@gmail.com';
reassign.fromUserId = u.id;
reassign.toUserId = u2.id;
ID batchprocessid = Database.executeBatch(reassign);
}