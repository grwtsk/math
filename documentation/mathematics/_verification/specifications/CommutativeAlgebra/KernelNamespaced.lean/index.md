# Verification target: Kernel Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d443b60885ec543d7d2b064d2d1af16416306fe",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kernel/Variant2f973d9fa6e3bcd9c77f19cf6dde883c8a51d99d4bdb67a1525e4429823e9fb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/KernelNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/KernelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d443b60885ec543d7d2b064d2d1af16416306fe`.

Source path: `GRWTSK/Algebra/Kernel/Variant2f973d9fa6e3bcd9c77f19cf6dde883c8a51d99d4bdb67a1525e4429823e9fb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kernel/Variant2f973d9fa6e3bcd9c77f19cf6dde883c8a51d99d4bdb67a1525e4429823e9fb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TwoSidedIdeal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ker](../../../../CommutativeAlgebra/KernelNamespaced.lean/declarations/ker.md) | 40 | `declaration-track:c54540ee5e4a4efb8ad96728b8e50ce5b073d439901cdfa8a91aee41f1d0eb43` |
| 2 | `lemma` | [ker_ringCon](../../../../CommutativeAlgebra/KernelNamespaced.lean/declarations/ker-ringcon.md) | 48 | `result-track:3e2142fcc255c971d329ccd5e1173d6eda209189ad470417742d21c46460b315` |
| 3 | `lemma` | [mem_ker](../../../../CommutativeAlgebra/KernelNamespaced.lean/declarations/mem-ker.md) | 50 | `result-track:a0d79dd534eb80b7e8b89257539fbc84acfeeed4f5466976dd3fa1e7cc297064` |
| 4 | `lemma` | [ker_eq_bot](../../../../CommutativeAlgebra/KernelNamespaced.lean/declarations/ker-eq-bot.md) | 53 | `result-track:13b4bca1bc0e43a36149ff20ba1c89a42660ccd647001345b140d5c991399974` |
| 5 | `lemma` | [ker_ringCon_mk'](../../../../CommutativeAlgebra/KernelNamespaced.lean/declarations/ker-ringcon-mk.md) | 67 | `result-track:de9f4ec42419f4737a22b6bd2afae83cf97e6a3bf390020832215970be163aee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f46bdf401c056117acc0c204a8ca8215cb7b86b4b42769a34245278eb5c435e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Kernel/Variant2f973d9fa6e3bcd9c77f19cf6dde883c8a51d99d4bdb67a1525e4429823e9fb4.lean","GRWTSK/_verification/specifications/Algebra/Kernel/Variant2f973d9fa6e3bcd9c77f19cf6dde883c8a51d99d4bdb67a1525e4429823e9fb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
