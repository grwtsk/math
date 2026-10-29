# Verification target: Derangements Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13c6617239f223c970b51beb17b591aaad052473",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3c8b66e876a81b2aec8b025e70b36c76e6ccd1168f2a95e198f68a668fb9e189.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DerangementsBasicPublic.lean/index.md) · [Full source](../../../../Combinatorics/DerangementsBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13c6617239f223c970b51beb17b591aaad052473`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3c8b66e876a81b2aec8b025e70b36c76e6ccd1168f2a95e198f68a668fb9e189.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3c8b66e876a81b2aec8b025e70b36c76e6ccd1168f2a95e198f68a668fb9e189.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derangements](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/derangements.md) | 36 | `declaration-track:f244e4103d18ea925d3804c700a080f392f82c900631918533d6eb7c035c949d` |
| 2 | `theorem` | [mem_derangements_iff_fixedPoints_eq_empty](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/mem-derangements-iff-fixedpoints-eq-empty.md) | 41 | `result-track:ddea8221d5137ed13fff8d49823ce8b4fdf094561ae98879cb68adb630c0195a` |
| 3 | `def` | [Equiv.derangementsCongr](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/equiv-derangementscongr.md) | 46 | `declaration-track:c654caf8a581afab96bcc57576aaeb92167682a82e2b935f95a14d6c95e05ad8` |
| 4 | `def` | [subtypeEquiv](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/subtypeequiv.md) | 54 | `declaration-track:8317ecc1e2bb6688c24b9b2bf402956dadbd2118ddfc265320f1310c073d1bc3` |
| 5 | `def` | [atMostOneFixedPointEquivSum_derangements](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/atmostonefixedpointequivsum-derangements.md) | 79 | `declaration-track:7dee8444b019489aefa9805f96c3b52ed84837e3d02733794e1621d2b4258edc` |
| 6 | `def` | [RemoveNone.fiber](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/removenone-fiber.md) | 115 | `declaration-track:51f014eefa8a83ea61068a9b33296ac70a6a28fd160c5d24032bf1bb93af4f9a` |
| 7 | `theorem` | [RemoveNone.mem_fiber](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/removenone-mem-fiber.md) | 118 | `result-track:e53ec2b610c4fe6d6d21b208f05dcb52651518d01f1302ab3d93079220d7f413` |
| 8 | `theorem` | [RemoveNone.fiber_none](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/removenone-fiber-none.md) | 123 | `result-track:6f011d48337e91c5ceb6788c09853b61f7b124aea3f0a0a952187b29bddc6f0e` |
| 9 | `theorem` | [RemoveNone.fiber_some](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/removenone-fiber-some.md) | 132 | `result-track:19e780faa2b2ebf715d4419b7eb45a7a0b26d79ec7bf5628e1d7b7c969b71ea6` |
| 10 | `def` | [derangementsOptionEquivSigmaAtMostOneFixedPoint](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/derangementsoptionequivsigmaatmostonefixedpoint.md) | 172 | `declaration-track:77c30a755cdd62c6764983a5fa274a9c610607c0fee56ca0e42bddf60ff26815` |
| 11 | `def` | [derangementsRecursionEquiv](../../../../Combinatorics/DerangementsBasicPublic.lean/declarations/derangementsrecursionequiv.md) | 189 | `declaration-track:4d12b7cc7963152c7874527c927a26863cefd05c8d73b8f36fd8c84a7a72e53e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d5abe150a0f384cb3e76dfcddf08da4e3425b33206fbcc279dd8bf61f1f5b4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3c8b66e876a81b2aec8b025e70b36c76e6ccd1168f2a95e198f68a668fb9e189.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3c8b66e876a81b2aec8b025e70b36c76e6ccd1168f2a95e198f68a668fb9e189.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
