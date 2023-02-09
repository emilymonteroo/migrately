import { v4 as uuid } from "uuid";

export const DashboardMenu = [
  
  {
    id: uuid(),
    title: "Attorney Licenses",
    roles: ["Admin", "User", "Attorney"],
    icon: "book",
    link: "/licenses",
  },
  {
    id: uuid(),
    title: "Add New Attorney License",
    roles: ["Admin", "Attorney"],
    icon: "book",
    link: "/licenses/new",
  },
  
];

export default DashboardMenu;
