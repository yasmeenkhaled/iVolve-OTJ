# Lab 33: Role-based Authorization in Jenkins

This lab demonstrates how to configure user-based permissions in Jenkins using the Role-based Authorization Strategy plugin.

---

## ✅ Objective

- Create two users: `user1` and `user2`
- Assign `admin` role to `user1`
- Assign `read-only` role to `user2`

---

## 🧩 Steps

### 1. Install Required Plugin

- Go to **Manage Jenkins → Plugins → Available**
- Search for `Role-based Authorization Strategy`
- Install without restart

### 2. Configure Authorization

- Go to **Manage Jenkins → Configure Global Security**
- Under **Authorization**, select: `Role-Based Strategy`

### 3. Create Users

- Go to **Manage Jenkins → Manage Users → Create User**
- Add:
  - `user1`
  - `user2`
<img width="1718" height="839" alt="image" src="https://github.com/user-attachments/assets/1cbb7071-f91a-4ca4-b090-9f1bd56add46" />

### 4. Define Roles

- Go to **Manage and Assign Roles → Manage Roles**
- Create:
  - `admin` role with full permissions
  - `read-only` role with only read access
    <img width="1718" height="839" alt="image" src="https://github.com/user-attachments/assets/8348f3f5-5183-4a53-99bd-cc5a2aa957ea" />


### 5. Assign Roles

- Go to **Manage and Assign Roles → Assign Roles**
- Assign:
  - `user1` → `admin`
  - `user2` → `read-only`

### 6. Test

- Login as `user1` → Full control
- Build / Configer / Delete
  <img width="1718" height="839" alt="image" src="https://github.com/user-attachments/assets/b41f513e-adcf-48c1-bf50-5d8cb30ad8a0" />

- Login as `user2` → Can only view
<img width="1718" height="839" alt="image" src="https://github.com/user-attachments/assets/598eb09a-e095-4a9f-b6d5-87f977971eea" />

---



