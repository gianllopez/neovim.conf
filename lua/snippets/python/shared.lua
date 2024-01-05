return {
  s("fim", {
    t("from "),
    i(1),
    t(" import "),
    i(2),
  }),
  s("pdb", {
    t('__import__("pdb").set_trace()'),
  }),
}
