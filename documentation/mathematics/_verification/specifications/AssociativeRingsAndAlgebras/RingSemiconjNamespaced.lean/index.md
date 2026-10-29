# Verification target: Ring Semiconj Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a40d9802b42f9e774175ce25224d74cdf3923a0f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semiconj/Variant7369334d8e3f7582fd8a207fefdf42491a3f50776e8c97377038713652de5832.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a40d9802b42f9e774175ce25224d74cdf3923a0f`.

Source path: `GRWTSK/Algebra/GroupTheory/Semiconj/Variant7369334d8e3f7582fd8a207fefdf42491a3f50776e8c97377038713652de5832.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semiconj/Variant7369334d8e3f7582fd8a207fefdf42491a3f50776e8c97377038713652de5832.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_right](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/add-right.md) | 39 | `result-track:095e22408da43cf4d993a8f7acd9a9b903c44e0f79c2bf7c2be9d4ebfb0f775b` |
| 2 | `theorem` | [add_left](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/add-left.md) | 44 | `result-track:4d62269e2f109d24a95fb0db6df714850b33f087470075af34f01e1938eb2810` |
| 3 | `theorem` | [neg_right](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/neg-right.md) | 52 | `result-track:2c433e98e3ebfda8fa5f28173fc77cfbdd4c2fb97899ad90cbe5f06add10d69e` |
| 4 | `theorem` | [neg_right_iff](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/neg-right-iff.md) | 56 | `result-track:e6ba00ed79443ecc8ec73e7fdb6ce57d5a5e8152e4db085c5564e8a1903af783` |
| 5 | `theorem` | [neg_left](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/neg-left.md) | 59 | `result-track:fdf53d2fe756ebdb70b8021429ebf7aa74ee3d9e7322b1246e3380c992dc15da` |
| 6 | `theorem` | [neg_left_iff](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/neg-left-iff.md) | 63 | `result-track:90b34a11a5a701a78a32f21569f7079ff18b68a63afb05dd8f789b7064e4b034` |
| 7 | `theorem` | [neg_one_right](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/neg-one-right.md) | 72 | `result-track:8ebcaa9b61b09c3cd9d1854230c3e7dbf2fad4f4c31865fd7a40f12322e7e38e` |
| 8 | `theorem` | [neg_one_left](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/neg-one-left.md) | 74 | `result-track:b0e6d1cf7cd1286a1cfee7fd83d914c15e888542314f7d47bf11cdd3fdae418e` |
| 9 | `theorem` | [sub_right](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/sub-right.md) | 83 | `result-track:9b03513a1b5339f9b1faaaa2f2a30a9c74637f79a49694a65534b867f3db4638` |
| 10 | `theorem` | [sub_left](../../../../AssociativeRingsAndAlgebras/RingSemiconjNamespaced.lean/declarations/sub-left.md) | 88 | `result-track:e879f14fd6ee5d149dca71fc569940daeca46d7ebb16f64d1c9c7f7666920fb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f43baf74cb09b01631ce7db48fb6fe7fd8598a1917a74b10dcd2c205720220b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Semiconj/Variant7369334d8e3f7582fd8a207fefdf42491a3f50776e8c97377038713652de5832.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Semiconj/Variant7369334d8e3f7582fd8a207fefdf42491a3f50776e8c97377038713652de5832.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
