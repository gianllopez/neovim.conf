local function capitalize(args, parent, user_args)
  local string = args[1][1]
  return (string:gsub("^%l", string.upper))
end

return {
  -- `React Native` screen with general and standarized functionalities.
  s("rns", {
    t({
      "import { SafeAreaView } from 'react-native-safe-area-context';",
      "",
      "export function ",
    }),
    i(1),
    t({
      "() {",
      "\treturn (",
      '\t\t<SafeAreaView className="flex-1 p-4 bg-white">',
      "\t\t\t",
    }),
    i(2),
    t({
      "",
      "\t\t</SafeAreaView>",
      "\t);",
      "};",
    }),
  }),
  -- `React Native` screen with an `useEffect` call on component mount.
  s("rnsa", {
    t({
      "import { useEffect, useState } from 'react';",
      "import { SafeAreaView } from 'react-native-safe-area-context';",
      "",
      "export function ",
    }),
    i(1),
    t({
      "() {",
      "\tconst [",
    }),
    i(2),
    t(", set"),
    f(capitalize, { 2 }),
    t({ "] = useState<" }),
    i(3),
    t(">("),
    i(4),
    t({
      ");",
      "",
      "\tuseEffect(() => {",
      "\t\t",
    }),
    i(5),
    t({
      "",
      "\t}, []);",
      "",
      "\treturn (",
      '\t\t<SafeAreaView className="flex-1 p-4 bg-white">',
      "\t\t\t",
    }),
    i(6),
    t({
      "",
      "\t\t</SafeAreaView>",
      "\t);",
      "};",
    }),
  }),
}
