local utils = require("snippets.utils")

return {
  -- console log.
  s("log", {
    t("console.log("),
    i(1),
    t(");"),
  }),
  -- typed functional component state.
  s("rs", {
    t("const ["),
    i(1),
    t(", set"),
    f(utils.capitalize, { 1 }),
    t({ "] = useState<" }),
    i(2),
    t(">("),
    i(3),
    t(");"),
  }),
  -- functional component effect without dependencies.
  s("re", {
    t({ "useEffect(() => {", "\t" }),
    i(1),
    t({ "\t", "}, []);" }),
  }),
  -- functional component effect with dependencies.
  s("red", {
    t({ "useEffect(() => {", "\t" }),
    i(1),
    t({ "\t", "}, [" }),
    i(2),
    t("]);"),
  }),
  -- conditional render.
  s("rcr", {
    t("{"),
    i(1),
    t(" ? ("),
    i(2),
    t(") : null}"),
  }),
  -- functional component with typed props.
  s("rfc", {
    t({
      "type Props = {};",
      "",
      "export function ",
    }),
    i(1),
    t({
      "({}: Props) {",
      "\treturn (",
      "\t\t",
    }),
    i(2),
    t({
      "",
      "\t);",
      "};",
    }),
  }),
}
