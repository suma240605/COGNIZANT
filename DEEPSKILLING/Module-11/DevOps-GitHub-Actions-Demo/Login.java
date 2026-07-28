public class Login {

    public static boolean validate(String username, String password) {

        return username.equals("admin") && password.equals("1234");
    }

    public static void main(String[] args) {

        if (validate("admin", "1234")) {
            System.out.println("Login Successful");
        } else {
            System.out.println("Login Failed");
        }
    }
}
