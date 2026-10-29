# Verification target: Sections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf70b315cb77cfacb7c79f83b7b57ff6ccd4bf82",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variant1f6706093cdac130119dc80b8b1c8787615eb9f1338908d7be6b924bdeb63daa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/Sections.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/Sections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf70b315cb77cfacb7c79f83b7b57ff6ccd4bf82`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variant1f6706093cdac130119dc80b8b1c8787615eb9f1338908d7be6b924bdeb63daa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sections/Variant1f6706093cdac130119dc80b8b1c8787615eb9f1338908d7be6b924bdeb63daa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Bind` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sections](../../../../../Combinatorics/EnumerativeCombinatorics/Sections.lean/declarations/sections.md) | 24 | `declaration-track:643470c5c8985c6fe2822f2e63894794199b834fe93713b5bd04e3ebf1b28af2` |
| 2 | `theorem` | [sections_zero](../../../../../Combinatorics/EnumerativeCombinatorics/Sections.lean/declarations/sections-zero.md) | 29 | `result-track:0020072b24652ec1df6bef2dcd9a066522a7fa31aae67491333250630bbb8318` |
| 3 | `theorem` | [sections_cons](../../../../../Combinatorics/EnumerativeCombinatorics/Sections.lean/declarations/sections-cons.md) | 33 | `result-track:fb9fb64d7b4d6590ae2b559fe8c135e47e3ed4c97bf99d6c9b80329ee9b86c17` |
| 4 | `theorem` | [coe_sections](../../../../../Combinatorics/EnumerativeCombinatorics/Sections.lean/declarations/coe-sections.md) | 37 | `result-track:8e9c61b41193770e4ad8b1271b0335be4774a136ca83a836ada0acf78a78462c` |
| 5 | `theorem` | [sections_add](../../../../../Combinatorics/EnumerativeCombinatorics/Sections.lean/declarations/sections-add.md) | 48 | `result-track:b7b505e8a4ff6eef7798ec3deb604542e42acfb59470fd5707a7a146ce8d5be0` |
| 6 | `theorem` | [mem_sections](../../../../../Combinatorics/EnumerativeCombinatorics/Sections.lean/declarations/mem-sections.md) | 53 | `result-track:d376ebef0e67f7e1f7b176e2cb9cabe66e32ed1f300bd76c624db64f306ea154` |
| 7 | `theorem` | [card_sections](../../../../../Combinatorics/EnumerativeCombinatorics/Sections.lean/declarations/card-sections.md) | 59 | `result-track:eb1839d13936dc2bf04bef5849e24de1f305f5702f7c9f60102f31dbaafe3205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d4c5358788f377107d6c6f6ee768dfff9143db95bf2d384f20760f6ab34270c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variant1f6706093cdac130119dc80b8b1c8787615eb9f1338908d7be6b924bdeb63daa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sections/Variant1f6706093cdac130119dc80b8b1c8787615eb9f1338908d7be6b924bdeb63daa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
