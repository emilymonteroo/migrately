import { lazy } from "react";

const License = lazy(() => import("../components/licenses/License"));
const LicenseForm = lazy(() => import("../components/licenses/LicenseForm"));

const licenses = [
  {
    path: "/licenses",
    name: "Licenses",
    element: License,
    roles: ["User", "Admin", "Attorney"],
    exact: true,
    isAnonymous: false,
  },
  {
    path: "/licenses/new",
    name: "Add License",
    element: LicenseForm,
    roles: ["Admin", "Attorney"],
    exact: true,
    isAnonymous: false,
  },
  {
    path: "/licenses/:id",
    name: "Edit License",
    element: LicenseForm,
    roles: ["Admin", "Attorney"],
    exact: true,
    isAnonymous: false,
  },
];

const allRoutes = [
  ...licenses,
];

export default allRoutes;
