public class SelectList{
    String[] countries=new String[]{};
    public PageReference test() {
        return null;
    }
    public list<SelectOption> getItems(){
        List<SelectOption> options=new List<SelectOption>();
        options.add(new SelectOption('US','US'));
        options.add(new SelectOption('CANADA','CANADA'));
        options.add(new SelectOption('MEXICO','Mexico'));
        return options;
    }
    public String[] getCountries(){
        return countries;
    }
    public void setCountries(String[] countries){
        this.countries=countries;
    }
}