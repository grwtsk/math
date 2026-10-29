# Verification target: Sections Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d6eec807a47890b3db5a57942db1affe1255c22",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantcb0049e5842170575b32970b86fd83eee1ea9b03ede8ad999b75e4ea1e57dcc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d6eec807a47890b3db5a57942db1affe1255c22`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantcb0049e5842170575b32970b86fd83eee1ea9b03ede8ad999b75e4ea1e57dcc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sections/Variantcb0049e5842170575b32970b86fd83eee1ea9b03ede8ad999b75e4ea1e57dcc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Bind` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sections](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespaced.lean/declarations/sections.md) | 32 | `declaration-track:bc115aa992444c1932f8f121dc663e6670b939237d91dfb179d3dba760f3136b` |
| 2 | `theorem` | [sections_zero](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespaced.lean/declarations/sections-zero.md) | 37 | `result-track:1fa0589c456ab5b32c531633a149c443d8838d767b94278503a45eff8d71c7ef` |
| 3 | `theorem` | [sections_cons](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespaced.lean/declarations/sections-cons.md) | 41 | `result-track:42752092efed9205ab8de9d6023faf4ea4c9a5c625bf4073525f5e8d023f3287` |
| 4 | `theorem` | [coe_sections](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespaced.lean/declarations/coe-sections.md) | 45 | `result-track:c6dbe150435001571f52c4b76bb3b98afcb6cc981e7ae6f323c82e6ce8c2bf8f` |
| 5 | `theorem` | [sections_add](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespaced.lean/declarations/sections-add.md) | 56 | `result-track:97a7b82ecaf172273599d496a6704275c65ee2f66d15ad279b963a5c75c7b450` |
| 6 | `theorem` | [mem_sections](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespaced.lean/declarations/mem-sections.md) | 61 | `result-track:20289ae4dd8725d026eeeb172c538312e50806fd76a19a068a610540fb4e9011` |
| 7 | `theorem` | [card_sections](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespaced.lean/declarations/card-sections.md) | 67 | `result-track:1d00f76e9caaf13540ce4cdd995a00749daa7fad5844680a7e5fec6388a013f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61bb804d08f8f7a774e78112e36b7b80e5a0f31682d3914e4f3275da9cbebec6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantcb0049e5842170575b32970b86fd83eee1ea9b03ede8ad999b75e4ea1e57dcc1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sections/Variantcb0049e5842170575b32970b86fd83eee1ea9b03ede8ad999b75e4ea1e57dcc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
