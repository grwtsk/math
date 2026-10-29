# Verification target: Trusted External Boundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c60d49a8ad961fa4b3acabb1a4239bebf80df3b1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c60d49a8ad961fa4b3acabb1a4239bebf80df3b1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Authority.BoundaryCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Authority.ExternalCertificate` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TrustedExternalDTT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/trustedexternaldtt.md) | 47 | `declaration-track:89ca30a618b23d7b036d047bf89e897f725ee0692359821fc3dd85a1a3d1b458` |
| 2 | `def` | [CertifiedOrTrusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/certifiedortrusted.md) | 93 | `declaration-track:fe11735c736167b93cba78f56ed214535b763adba25c30814bf46308795a337e` |
| 3 | `theorem` | [certified_or_trusted_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/certified-or-trusted-sound.md) | 106 | `result-track:d16f53438767b1a2bc47adfd86bdf935ab449ccaba7fc3a19f964558f4f02de2` |
| 4 | `theorem` | [trusted_external_boundary_calculus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/trusted-external-boundary-calculus.md) | 125 | `result-track:8180b0adb3e0ed0795a8bed032a178d6a46713c4d3f91e9d512e14cdad29ac34` |
| 5 | `theorem` | [no_direct_trusted_external_crossing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/no-direct-trusted-external-crossing.md) | 136 | `result-track:2c91aa2a8995f76959e418dd81ace4a53c96aae74528cd0434e953cbcab124bb` |
| 6 | `theorem` | [extended_ownership_reduces_to_internal_without_trusted_external](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/extended-ownership-reduces-to-internal-without-trusted-external.md) | 151 | `result-track:5fa9066e2751b2feaa7c39b50f98da612d7c4bd941ad3e50ae9cdb7179791b3f` |
| 7 | `theorem` | [extended_soundness_reduces_to_internal_without_trusted_external](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/extended-soundness-reduces-to-internal-without-trusted-external.md) | 172 | `result-track:87c58402e4de7cd444339bc2e0b532b8eed5ce1055c404e70df6296eb867a319` |
| 8 | `def` | [OwnsExtPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/ownsextpred.md) | 196 | `declaration-track:f5b20d5f8e5c08be986840e3d5ff24c4cc619002fe9123a6c080c1777de1326d` |
| 9 | `def` | [CertifiedOrTrustedPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/certifiedortrustedpred.md) | 202 | `declaration-track:162efd5539fec31fa1bdfdfb2a427dbd2ff32dc1e133e21f9ad22d95ce23d2c6` |
| 10 | `def` | [DirectExtPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/directextpred.md) | 208 | `declaration-track:1b9f71712dc0d0c1f57ceb3a135529e1a1054b53660e6adf638043f0e50690db` |
| 11 | `theorem` | [ownsExt_le_certifiedOrTrusted_categorical](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/ownsext-le-certifiedortrusted-categorical.md) | 214 | `result-track:d772b26215f48af94ff6c498ef13b1e066ee9bb9230dd8d0c6022cf4e0f4f9d1` |
| 12 | `theorem` | [certifiedOrTrusted_le_holds_categorical](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/certifiedortrusted-le-holds-categorical.md) | 229 | `result-track:7e18184cb435964ca08690b2e9d6eb82fc7093a10c45dc6f66d40270793c7334` |
| 13 | `theorem` | [trusted_external_owns_le_holds_by_categorical_logic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/trusted-external-owns-le-holds-by-categorical-logic.md) | 250 | `result-track:d7bb91188569c878cf58d10bc279704a04b842fbb3e9cc4933593dac0c59213a` |
| 14 | `theorem` | [no_direct_trusted_external_crossing_as_empty_subobject](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundary.lean/declarations/no-direct-trusted-external-crossing-as-empty-subobject.md) | 263 | `result-track:8ff5b2a02cdc87ef6c440368a82065bedb70cbbdfa1a97580536367da26d019c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8de110f420912d7c163e194fe1212e8bfa743932c356d60aab77d41c374f677 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
