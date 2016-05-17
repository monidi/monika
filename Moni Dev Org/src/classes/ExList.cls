//collections..list
public class ExList{
    public void printList(){
        List<integer> ls=new List<integer>();
        ls.add(7);
        ls.add(3);
        ls.add(4);
        ls.add(3);
        ls.add(2);
        ls.add(9);
        ls.add(5);
        ls.add(8);
        System.debug('---------list values-------------'+ls);
        ls.set(0,8);
        System.debug('----------------------'+ls);
        System.debug('----------------------'+ls.get(4));
        ls.clear();
        System.debug('===================================='+ls);
        //SORTING
        list<String> lis=new List<String>{'book','pen','slate','pencil'};
        System.debug('----------------------'+lis);
        lis.sort();
        System.debug('----------AFTER SORTING------------'+lis);
        List<String> ars=new String[1];
        ars.add('mm');
        
        System.debug('-----------arrayyyyyyyyyyy-----------'+ars.get(0));
        //doubt
        List<List<integer>> lin=new List<List<integer>>();
        lin.add(ls);
        System.debug('-------------------------------------list<list>------'+lin);
        
    //(7, 3, 4, 3, 2, 9, 5, 8)
        /*for(integer i:ls){
            System.debug('===============list value====='+i);
        }*/
    }
    public void printSet(){
        Set<integer> st=new Set<integer>();
        st.add(5);
        st.add(3);
        st.add(4);
        st.add(3);
        st.add(7);
        st.add(9);
        st.add(5);
        st.add(8);
        System.debug('---------set values-------------'+st);
        
    //3, 4, 5, 7, 8, 9
        for(integer i:st){
            System.debug('===============set value====='+i);
        }
        
    }
    public void printMap(){
        Map<integer, String> mp=new Map<integer,String>();
        mp.put(8,'moni');
        mp.put(1,'karthik');
        mp.put(4,'malla');
        mp.put(6,'bannu');
        mp.put(7,'sai');
        mp.put(9,'nani');
        mp.put(2,'munna');
        String str=mp.get(2)+'Monika';
        mp.put(1,'kee');
        mp.put(8,'lucky');
        mp.put(2,str);
        System.debug('++++++++++++map key value pair++++'+mp);//1=kee, 2=munna, 4=malla, 6=bannu, 7=sai, 8=lucky, 9=nani}
        System.debug('===========value at 4====='+mp.get(4));
        Set<integer> si=mp.keySet();
        System.debug('==========keys==================='+si);
    
}
}