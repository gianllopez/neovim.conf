return {
  -- "React Native" screen with "react-native-safe-area-context" and "nativewind" functionalities
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
}

