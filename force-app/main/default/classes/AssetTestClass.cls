@istest
public class AssetTestClass {
    @istest
    private static void testAssettrigger(){
        account acc = new account();
        acc.name = 'test acc';
        insert acc;
        list<asset> listasset = new list<asset>();
for(Integer i=0;i<10;i++){
    asset a = new asset();
    a.name= 'test asset';
    a.AccountId = acc.id;
    listasset.add(a);
}
insert listasset;
    }
}
