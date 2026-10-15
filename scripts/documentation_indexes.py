"""Pure rendering of mathematical navigation and explicitly scoped inventory counts.

No source parsing, theorem census, proof verdict or publication decision occurs here.
"""
from collections import Counter
from pathlib import PurePosixPath

SUMMARY_PATH = 'docs/reference/library-summary.json'
INPUT_PATHS = ('docs/reference/results.json', 'evidence/source-intake.json',
               'lean-toolchain', 'lake-manifest.json')
AREA_TITLES = {'LinearAlgebra': 'Linear algebra', 'NumberTheory': 'Number theory',
               'DynamicalSystems': 'Dynamical systems', 'MeasureTheory': 'Measure theory',
               'Data': 'Data structures', 'Spectral': 'Spectral theory'}


def area_title(area):
    return AREA_TITLES.get(area, area)


def articles(layout):
    return {name: page for name, page in layout['pages'].items() if 'subject' in page}


def build_summary(layout, source_paths, catalog, intake, toolchain, lake, hashes, require):
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
    return {
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


def render_overview(summary):
    c = summary['counts']
    text = '# Mathematical documentation\n\n'
    text += ('Browse by mathematical area, then by object. Start with '
             '[the least-prime example](start/least-prime.md), [verification](how-to/verify.md), '
             'or the [selected result catalog](reference/results.md).\n\n')
    text += (f"{c['areas']} areas · {c['object_guides']} object guides · "
             f"{c['documented_objects']} documented object groups · {c['lean_modules']} Lean source modules.\n\n")
    text += '| Area index | Object guides | Object groups | Lean modules | Intake records | Selected families |\n'
    text += '|---|---:|---:|---:|---:|---:|\n'
    for area, row in summary['areas'].items():
        text += (f"| [{row['title']}](mathematics/{area}/index.md) | {row['object_guides']} | "
                 f"{row['documented_objects']} | {row['lean_modules']} | {row['intake_records']} | "
                 f"{row['selected_families']} |\n")
    text += '\n## Inventory and evidence scope\n\n'
    text += (f"The maintained documentation contains {c['maintained_pages']} pages, including area indexes, "
             f"guides and reference material. Object guides link {c['primary_sources']} distinct primary sources. "
             f"The archive intake records {c['intake_records']} sources; the selected catalog covers "
             f"{c['selected_families']} families. These are separate inventories and must not be added together.\n\n")
    text += '| Object-guide evidence label | Pages |\n|---|---:|\n'
    for status, count in summary['page_statuses'].items():
        text += f'| `{status}` | {count} |\n'
    text += ('\nEvidence labels describe the exact page/source scope. A fresh selected check is not '
             'whole-library acceptance; a written or historical description is not a new proof verdict. '
             'Source-module counts include audit interfaces and unverified candidates. No theorem, '
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
    pages = {n: p for n, p in articles(layout).items() if p['subject'] == area}
    for obj in sorted({p['object'] for p in pages.values()}):
        text += '\n## ' + obj.replace('/', ' / ') + '\n\n'
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
