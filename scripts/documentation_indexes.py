"""Pure rendering of mathematical navigation and explicitly scoped inventory counts.

Source-command counts are supplied by a separate parser. No source parsing,
compiler declaration census, proof verdict or publication decision occurs here.
"""
from collections import Counter
from pathlib import PurePosixPath
from posixpath import relpath

SUMMARY_PATH = 'docs/reference/library-summary.json'
INPUT_PATHS = ('docs/reference/results.json', 'evidence/source-intake.json',
               'lean-toolchain', 'lake-manifest.json')
AREA_TITLES = {'LinearAlgebra': 'Linear algebra', 'NumberTheory': 'Number theory',
               'DynamicalSystems': 'Dynamical systems', 'MeasureTheory': 'Measure theory',
               'Data': 'Data structures', 'Spectral': 'Spectral theory'}
ARTICLE_TOTALS_BEGIN = '<!-- BEGIN GENERATED MATHEMATICS TOTALS -->'
ARTICLE_TOTALS_END = '<!-- END GENERATED MATHEMATICS TOTALS -->'


def area_title(area):
    return AREA_TITLES.get(area, area)


def articles(layout):
    return {name: page for name, page in layout['pages'].items() if 'subject' in page}


def declaration_totals(source_census, paths):
    """Count each source path once, omitting unavailable parser results."""
    entries = [source_census[path] for path in sorted(set(paths))]
    parsed = [entry for entry in entries if entry['status'] == 'parsed']
    return {'declarations': sum(entry['counts']['declarations'] for entry in parsed),
            'theorems': sum(entry['counts']['theorems'] for entry in parsed),
            'parsed_modules': len(parsed), 'unparsed_modules': len(entries) - len(parsed)}


def build_summary(layout, source_paths, catalog, intake, toolchain, lake, hashes, require,
                  source_census=None):
    guides = articles(layout)
    sources = sorted(source_paths)
    require(len(sources) == len(set(sources)), 'duplicate inventory source')
    require(all(len(PurePosixPath(p).parts) >= 3 and p.startswith('GRWTSK/')
                and p.endswith('.lean') for p in sources), 'unclassified inventory source')
    records = catalog.get('records')
    candidates = intake.get('sources')
    require(catalog.get('schema') == 'docs-record/1' and
            intake.get('schema') == 'mathematical-source-intake-v1', 'inventory input schema')
    require(isinstance(records, list) and isinstance(candidates, list), 'inventory record lists')
    require(all(isinstance(r, dict) and all(isinstance(r.get(k), str) for k in
                ('id', 'page', 'subject', 'verification')) for r in records), 'invalid catalog inventory record')
    require(all(isinstance(r, dict) and isinstance(r.get('path'), str) for r in candidates),
            'invalid intake inventory record')
    require(len({r['id'] for r in records}) == len(records), 'duplicate catalog inventory record')
    require(len({r['path'] for r in candidates}) == len(candidates), 'duplicate intake inventory record')
    require(all(r['path'] in source_paths for r in candidates), 'intake inventory source missing')
    require(all(r['page'] in guides and r['subject'].split('/')[0] == guides[r['page']]['subject']
                for r in records), 'catalog inventory subject mismatch')
    packages = [p for p in lake.get('packages', []) if p.get('name') == 'mathlib']
    require(len(packages) == 1 and isinstance(packages[0].get('rev'), str), 'Mathlib inventory pin')
    require(len(packages[0]['rev']) == 40 and all(c in '0123456789abcdef' for c in packages[0]['rev']),
            'immutable Mathlib inventory pin')
    require(toolchain.startswith('leanprover/lean4:') and '\n' not in toolchain,
            'Lean inventory pin')
    if source_census is not None:
        require(isinstance(source_census, dict) and set(source_census) == set(sources),
                'source census inventory mismatch')
        require(all(p['primary_source'] in source_census for p in guides.values()),
                'guide primary source outside census inventory')
        for path, entry in source_census.items():
            require(isinstance(entry, dict) and entry.get('status') in ('parsed', 'unparsed'),
                    'invalid source census status: ' + path)
            digest = entry.get('sha256')
            require(isinstance(digest, str) and len(digest) == 64
                    and all(c in '0123456789abcdef' for c in digest),
                    'invalid source census hash: ' + path)
            if entry['status'] == 'parsed':
                counts = entry.get('counts')
                require(isinstance(counts, dict) and all(type(counts.get(k)) is int
                        and counts[k] >= 0 for k in ('declarations', 'theorems')),
                        'invalid source census counts: ' + path)
                require(counts['theorems'] <= counts['declarations'],
                        'inconsistent source census counts: ' + path)
    areas = sorted({p['subject'] for p in guides.values()}
                   | {PurePosixPath(p).parts[1] for p in sources})
    rows = {}
    for area in areas:
        pages = {n: p for n, p in guides.items() if p['subject'] == area}
        rows[area] = {
            'title': area_title(area), 'object_guides': len(pages),
            'documented_objects': len({p['object'] for p in pages.values()}),
            'primary_sources': len({p['primary_source'] for p in pages.values()}),
            'lean_modules': sum(PurePosixPath(p).parts[1] == area for p in sources),
            'intake_records': sum(PurePosixPath(r['path']).parts[1] == area for r in candidates),
            'selected_families': sum(r['subject'].split('/')[0] == area for r in records),
            'page_statuses': dict(sorted(Counter(p['status'] for p in pages.values()).items()))}
        if source_census is not None:
            rows[area]['declaration_totals'] = declaration_totals(
                source_census, (p for p in sources if PurePosixPath(p).parts[1] == area))
    summary = {
        'schema': 'mathematical-documentation-inventory-v1',
        'scope': 'Current local source paths and maintained documentation metadata; not theorem acceptance',
        'input_sha256': dict(sorted(hashes.items())), 'source_paths': sources,
        'toolchain': {'lean': toolchain, 'mathlib_revision': packages[0]['rev']},
        'counts': {'areas': len(areas), 'object_guides': len(guides),
                   'documented_objects': len({(p['subject'], p['object']) for p in guides.values()}),
                   'primary_sources': len({p['primary_source'] for p in guides.values()}),
                   'lean_modules': len(sources), 'intake_records': len(candidates),
                   'selected_families': len(records), 'maintained_pages': len(layout['pages'])},
        'page_statuses': dict(sorted(Counter(p['status'] for p in guides.values()).items())),
        'catalog_statuses': dict(sorted(Counter(r['verification'] for r in records).items())),
        'areas': rows}
    if source_census is not None:
        summary['source_census'] = dict(sorted(source_census.items()))
        summary['declaration_totals'] = declaration_totals(source_census, sources)
    return summary


def render_declaration_totals(totals):
    """Describe source syntax counts without implying theorem acceptance."""
    qualifier = 'At least ' if totals['unparsed_modules'] else ''
    text = (f"{qualifier}{totals['declarations']} source declaration commands, including "
            f"{totals['theorems']} theorem/lemma commands, across "
            f"{totals['parsed_modules']} parsed Lean source modules")
    if totals['unparsed_modules']:
        text += (f"; {totals['unparsed_modules']} modules are unparsed, so these totals "
                 'are lower bounds')
    return text + ('. These count source commands, not compiler-generated declarations '
                   'or accepted theorems.\n')


def render_overview(summary):
    c = summary['counts']
    text = '# Mathematical documentation\n\n'
    text += ('Browse by mathematical area, then by object. Start with '
             '[the least-prime example](start/least-prime.md), [verification](how-to/verify.md), '
             'or the [selected result catalog](reference/results.md).\n\n')
    text += (f"{c['areas']} areas · {c['object_guides']} object guides · "
             f"{c['documented_objects']} documented object groups · {c['lean_modules']} Lean source modules.\n\n")
    if 'declaration_totals' in summary:
        text += render_declaration_totals(summary['declaration_totals']) + '\n'
    text += '| Area index | Object guides | Object groups | Lean modules | Intake records | Selected families |\n'
    text += '|---|---:|---:|---:|---:|---:|\n'
    for area, row in summary['areas'].items():
        text += (f"| [{row['title']}](mathematics/{area}/index.md) | {row['object_guides']} | "
                 f"{row['documented_objects']} | {row['lean_modules']} | {row['intake_records']} | "
                 f"{row['selected_families']} |\n")
    text += (f"| **Total ({c['areas']} areas)** | **{c['object_guides']}** | "
             f"**{c['documented_objects']}** | **{c['lean_modules']}** | "
             f"**{c['intake_records']}** | **{c['selected_families']}** |\n")
    if 'declaration_totals' in summary:
        text += ('\n## Lean source command totals\n\n'
                 '| Area | Declaration commands | Theorem/lemma commands | Parsed modules | Unparsed modules |\n'
                 '|---|---:|---:|---:|---:|\n')
        for area, row in summary['areas'].items():
            totals = row['declaration_totals']
            lower = '≥ ' if totals['unparsed_modules'] else ''
            text += (f"| [{row['title']}](mathematics/{area}/index.md) | "
                     f"{lower}{totals['declarations']} | {lower}{totals['theorems']} | "
                     f"{totals['parsed_modules']} | {totals['unparsed_modules']} |\n")
        totals = summary['declaration_totals']
        lower = '≥ ' if totals['unparsed_modules'] else ''
        text += (f"| **Total** | **{lower}{totals['declarations']}** | "
                 f"**{lower}{totals['theorems']}** | **{totals['parsed_modules']}** | "
                 f"**{totals['unparsed_modules']}** |\n")
        text += ('\n`≥` marks a lower bound: unparsed files have unavailable counts. '
                 'The theorem/lemma column is included in the declaration column.\n')
    text += '\n## Inventory and evidence scope\n\n'
    text += (f"The maintained documentation contains {c['maintained_pages']} pages, including area indexes, "
             f"guides and reference material. Object guides link {c['primary_sources']} distinct primary sources. "
             f"The archive intake records {c['intake_records']} sources; the selected catalog covers "
             f"{c['selected_families']} families. These are separate inventories and must not be added together.\n\n")
    text += '| Object-guide evidence label | Pages |\n|---|---:|\n'
    for status, count in summary['page_statuses'].items():
        text += f'| `{status}` | {count} |\n'
    text += f"| **Total object guides** | **{c['object_guides']}** |\n"
    text += ('\nEvidence labels describe the exact page/source scope. A fresh selected check is not '
             'whole-library acceptance; a written or historical description is not a new proof verdict. '
             'Source-module counts include audit interfaces and unverified candidates. No accepted-theorem, '
             'proof or originality total is inferred.\n\n')
    text += (f"Pinned inputs: Lean `{summary['toolchain']['lean']}`; Mathlib "
             f"`{summary['toolchain']['mathlib_revision']}`. Pins identify inputs, not a new dependency rebuild.\n\n")
    text += ('[Count definitions](reference/library-pages.md#count-definitions) · '
             '[Structured inventory](reference/library-summary.json) · '
             '[Archive source candidates](reference/source-intake.md).\n\n')
    text += '## Reading and verification\n\n'
    text += ('[Evidence roles](explanation/evidence.md) · [Documentation standard](explanation/documentation.md) · '
             '[Source layout](reference/source-layout.md) · [Verification interfaces](reference/verification-interfaces.md) · '
             '[Provenance and historical limits](reference/documentation-history.md).\n\n')
    text += 'Navigation and inventory checks establish structural consistency, not mathematical acceptance.\n'
    return text


def render_area(layout, summary, area):
    row = summary['areas'][area]
    text = '# ' + row['title'] + '\n\n[All mathematical areas](../../index.md) · '
    text += f'[Lean source folder](../../../GRWTSK/{area}).\n\n'
    text += '| Inventory | Count |\n|---|---:|\n'
    for title, key in [('Object guides', 'object_guides'), ('Documented object groups', 'documented_objects'),
                       ('Distinct primary sources linked', 'primary_sources'), ('Lean source modules', 'lean_modules'),
                       ('Archive intake records', 'intake_records'), ('Selected catalog families', 'selected_families')]:
        text += f'| {title} | {row[key]} |\n'
    text += ('\nThese counts measure documentation and source coverage. They do not count accepted '
             'theorems or establish that every source module is documented or checked. '
             '[Definitions and limits](../../reference/library-pages.md#count-definitions).\n')
    if 'declaration_totals' in row:
        text += '\n' + render_declaration_totals(row['declaration_totals'])
    pages = {n: p for n, p in articles(layout).items() if p['subject'] == area}
    for obj in sorted({p['object'] for p in pages.values()}):
        text += '\n## ' + obj.replace('/', ' / ') + '\n\n'
        object_pages = {n: p for n, p in pages.items() if p['object'] == obj}
        object_sources = {p['primary_source'] for p in object_pages.values()}
        guide_label = 'object guide' if len(object_pages) == 1 else 'object guides'
        source_label = 'primary source file' if len(object_sources) == 1 else 'primary source files'
        text += (f"{len(object_pages)} {guide_label} · "
                 f"{len(object_sources)} distinct linked {source_label}.\n\n")
        if 'source_census' in summary:
            text += 'Linked primary-source scope: ' + render_declaration_totals(
                declaration_totals(summary['source_census'], object_sources)) + '\n'
        for name, page in sorted(pages.items(), key=lambda item: (item[1]['title'], item[0])):
            if page['object'] == obj:
                relative = PurePosixPath(name).relative_to('docs/mathematics/' + area)
                text += f"- [{page['title']}]({relative}).\n"
    if not pages:
        text += ('\nObject guides have not yet been written for this area. The source folder remains '
                 'available; source presence is not proof acceptance.\n')
    text += ('\n## Sources and verification\n\n'
             '[Selected catalog](../../reference/results.md) · [Archive source candidates](../../reference/source-intake.md) · '
             '[Verification interfaces](../../reference/verification-interfaces.md).\n')
    return text


def render_article_totals(layout, summary, name):
    """Render a guide's totals for exactly its registered primary source."""
    page = articles(layout)[name]
    source = page['primary_source']
    parent = PurePosixPath(name).parent.as_posix()
    source_link = relpath(source, parent)
    definitions = relpath('docs/reference/library-pages.md', parent)
    inventory = relpath(SUMMARY_PATH, parent)
    entry = summary.get('source_census', {}).get(source)
    parsed = entry is not None and entry['status'] == 'parsed'
    text = ARTICLE_TOTALS_BEGIN + '\n\n## Totals\n\n'
    text += (f"Scope: this object guide and the current bytes of its registered primary source "
             f"[`{source}`]({source_link}).\n\n")
    text += '| Inventory | Total |\n|---|---:|\n'
    text += '| Object guide | 1 |\n| Linked primary source file | 1 |\n'
    for title, key in [('Source declaration commands', 'declarations'),
                       ('Theorem/lemma commands', 'theorems')]:
        count = str(entry['counts'][key]) if parsed else 'Unavailable'
        text += f'| {title} | {count} |\n'
    if not parsed:
        text += '\nSource-command totals are unavailable for this primary source.\n'
    text += ('\nTheorem/lemma commands are included in declaration commands. These are source '
             'syntax counts; compiler-generated declarations and proof acceptance are '
             'outside their scope.\n\n')
    text += (f'[Count definitions]({definitions}#count-definitions) · '
             f'[Structured inventory]({inventory}).\n\n')
    return text + ARTICLE_TOTALS_END


def update_article_totals(text, block):
    """Replace one managed footer or append it without rewriting guide prose."""
    if (not block.startswith(ARTICLE_TOTALS_BEGIN + '\n')
            or not block.endswith('\n' + ARTICLE_TOTALS_END)
            or block.count(ARTICLE_TOTALS_BEGIN) != 1 or block.count(ARTICLE_TOTALS_END) != 1):
        raise ValueError('malformed replacement mathematics totals block')
    begin_count = text.count(ARTICLE_TOTALS_BEGIN)
    end_count = text.count(ARTICLE_TOTALS_END)
    if (text.count('BEGIN GENERATED MATHEMATICS TOTALS') != begin_count
            or text.count('END GENERATED MATHEMATICS TOTALS') != end_count
            or begin_count != end_count or begin_count > 1):
        raise ValueError('malformed or duplicate generated mathematics totals markers')
    if not begin_count:
        separator = '\n' if text.endswith('\n') else '\n\n'
        return text + separator + block + '\n'
    begin = text.index(ARTICLE_TOTALS_BEGIN)
    end = text.index(ARTICLE_TOTALS_END) + len(ARTICLE_TOTALS_END)
    if (begin >= end or (begin and text[begin - 1] != '\n')
            or (end < len(text) and text[end] not in '\r\n')
            or text[begin + len(ARTICLE_TOTALS_BEGIN):][:1] not in ('\n', '\r')
            or text[end - len(ARTICLE_TOTALS_END) - 1] != '\n'):
        raise ValueError('malformed generated mathematics totals marker placement')
    return text[:begin] + block + text[end:]
