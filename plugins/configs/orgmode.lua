local status_ok, org = pcall(require, "orgmode")
if not status_ok then return end
org.setup_ts_grammar()
org.setup{
  org_agenda_files = { '~/orgs/*' },
  org_default_notes_file = '~/orgs/refile.org',
}
