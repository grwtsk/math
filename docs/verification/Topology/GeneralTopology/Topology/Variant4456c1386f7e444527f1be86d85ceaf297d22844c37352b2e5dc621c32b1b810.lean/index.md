# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9846b9ba929036bef8ea6b9431b95f60b6e9fe0a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9846b9ba929036bef8ea6b9431b95f60b6e9fe0a`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Maximal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toPrimeSpectrum_range](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810.lean/declarations/toprimespectrum-range--0816879177bda70137c664c7.md) | 31 | `result-track:0816879177bda70137c664c7472c8862323b51c8ef17e262b9d61b1779499c8b` |
| 2 | `instance` | [zariskiTopology](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810.lean/declarations/zariskitopology--8f904a9a80e82a1d4597858f.md) | 39 | `declaration-track:8f904a9a80e82a1d4597858f5dd78d6e8092dcbf3226d9157654fe899459125c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810.lean/declarations/instance--b9886aa81565dc00df2fbddb.md) | 42 | `declaration-track:b9886aa81565dc00df2fbddb69c260163bc70ff778a5f2af63deed63c6f1763b` |
| 4 | `theorem` | [toPrimeSpectrum_continuous](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant4456c1386f7e444527f1be86d85ceaf297d22844c37352b2e5dc621c32b1b810.lean/declarations/toprimespectrum-continuous--d030a4cf0d196a4332d5f050.md) | 47 | `result-track:d030a4cf0d196a4332d5f050da16720df8d28ea5e5d4da072ce9b23d4b8a3964` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
