public class DeactivatingAUser {

@future
public static void InactivatingTheUser(string userEmailId)
{
  List<User> listUser = new List<User>();
  for(User userObj:[SELECT Email, IsActive FROM User where Email=: userEmailId AND IsActive=true])
  {
    userObj.IsActive=false;
    listUser.add(userObj);
  } 
  
  if(!listUser.isEmpty())  
    update listUser;
  }
}