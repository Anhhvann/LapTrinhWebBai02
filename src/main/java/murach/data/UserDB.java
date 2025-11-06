package murach.data;

import java.util.ArrayList;
import java.util.List;
import murach.business.User;

public class UserDB {

    // Bộ nhớ tạm đóng vai trò như database
    private static List<User> users = new ArrayList<>();

    // ✅ Hàm thêm user
    public static void insert(User user) {
        if (user != null) {
            users.add(user);
            System.out.println("Đã thêm user: " + user.getEmail());
        }
    }

    // ✅ Hàm lấy tất cả user
    public static List<User> selectAll() {
        return users;
    }

    // ✅ Hàm tìm user theo email
    public static User selectByEmail(String email) {
        for (User u : users) {
            if (u.getEmail().equalsIgnoreCase(email)) {
                return u;
            }
        }
        return null;
    }

    // ✅ Hàm xóa user theo email
    public static void delete(String email) {
        users.removeIf(u -> u.getEmail().equalsIgnoreCase(email));
    }
}
