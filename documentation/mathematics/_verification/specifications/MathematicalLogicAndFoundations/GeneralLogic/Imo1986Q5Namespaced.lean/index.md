# Verification target: Imo1986 Q5 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bb9fa1c373a2c63bb247a0323a25031f12ccd71",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo1986Q5/Variantda1d94f095b10d63b0174e04a54ebfaaa988099ac2f497f65c9dc98bb5c8e94d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Imo1986Q5Namespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Imo1986Q5Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bb9fa1c373a2c63bb247a0323a25031f12ccd71`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Imo1986Q5/Variantda1d94f095b10d63b0174e04a54ebfaaa988099ac2f497f65c9dc98bb5c8e94d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Imo1986Q5/Variantda1d94f095b10d63b0174e04a54ebfaaa988099ac2f497f65c9dc98bb5c8e94d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsGood](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Imo1986Q5Namespaced.lean/declarations/isgood.md) | 41 | `declaration-track:c422274f7c34662b282dcb2ebd4fce3d73cff8fe28bb16aa7de160e6540d376e` |
| 2 | `theorem` | [map_add](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Imo1986Q5Namespaced.lean/declarations/map-add.md) | 51 | `result-track:7b010fac30029ecb52610811e15466bff859a6b5bfa31df68ae0c6ac2f04f985` |
| 3 | `theorem` | [map_eq_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Imo1986Q5Namespaced.lean/declarations/map-eq-zero.md) | 54 | `result-track:92e32320b5f73154b2b60892e23f3805d9305da36b0c7b37107047c2aee2dff4` |
| 4 | `theorem` | [map_ne_zero_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Imo1986Q5Namespaced.lean/declarations/map-ne-zero-iff.md) | 59 | `result-track:b5e2384f0e213548d4234e00c698b98f47fae8b229cf7238b2966c8586989532` |
| 5 | `theorem` | [map_of_lt_two](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Imo1986Q5Namespaced.lean/declarations/map-of-lt-two.md) | 61 | `result-track:2a62ab9a45890543de9eefcafc81c5cd8d606b125b8544a0fb9ef55b8005e52f` |
| 6 | `theorem` | [map_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Imo1986Q5Namespaced.lean/declarations/map-eq.md) | 71 | `result-track:64ae5d5622501e25b26ddec457d4b791493a9bd4309218c0950b772edb18d331` |
| 7 | `theorem` | [isGood_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Imo1986Q5Namespaced.lean/declarations/isgood-iff.md) | 78 | `result-track:10a74fb3ceb7e867244dd5bf5d2cb2234ed8673c7440168a7e8679d98ef1b505` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bbde1dacb703fa9d17930762c429cfd56230593341b225cbf1220b79aaa1023 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Imo1986Q5/Variantda1d94f095b10d63b0174e04a54ebfaaa988099ac2f497f65c9dc98bb5c8e94d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Imo1986Q5/Variantda1d94f095b10d63b0174e04a54ebfaaa988099ac2f497f65c9dc98bb5c8e94d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
