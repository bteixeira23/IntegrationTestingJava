package definition;
/*
* Created by Beatriz and Jamesson
* */

import groovy.json.internal.LazyMap;

public class AgapitoServer
{
    private static final String URL_USER = "http://agapito-server.herokuapp.com/users/";
    private static LazyMap fieldsJson = new LazyMap();
    private static String lastUser;

    public static void addFields(String field, String value) {
        fieldsJson.put(field, value);
    }

    public static void clearFields() {
        fieldsJson.clear();
    }

    public static LazyMap getFields() {
        return fieldsJson;
    }

    public static String getEndPoint() {
        return URL_USER;
    }

    public static String getLastUser() {
        return lastUser;
    }

    public static void setLastUser(String lastUser) {
        AgapitoServer.lastUser = lastUser;
    }
}
