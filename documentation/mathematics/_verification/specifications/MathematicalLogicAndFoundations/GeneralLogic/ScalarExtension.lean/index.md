# Verification target: Scalar Extension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55c0114d09c40c77fe3638b0ec8190c26d7f24ee",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55c0114d09c40c77fe3638b0ec8190c26d7f24ee`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Determinant.Transport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ScalarExtension](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/scalarextension.md) | 27 | `declaration-track:0465377466967b534e662821908cc4a6db627d1bed3a179fe38d9c15abfd86f8` |
| 2 | `def` | [extendCertifiedQuasiIso](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/extendcertifiedquasiiso.md) | 74 | `declaration-track:d1699ef78838d3788f849d5efedfccc22a281c482c48817600dc281c1a4784b0` |
| 3 | `theorem` | [extendCertifiedQuasiIso_hom](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/extendcertifiedquasiiso-hom.md) | 83 | `result-track:a03dee155bffd0dbef6d8ed6e2b546e655b7d221de3a490e9cf607a66aa9ec7b` |
| 4 | `theorem` | [extendCertifiedQuasiIso_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/extendcertifiedquasiiso-id.md) | 90 | `result-track:ab8103c08373a2c19ccadc9c21bb22275c6bf664aeed5fb494062ea369d2bb10` |
| 5 | `theorem` | [extendCertifiedQuasiIso_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/extendcertifiedquasiiso-comp.md) | 96 | `result-track:03a2f6b1d0b77165e8413d77d0d26bb77951eac320e6edfb99d5864573033bd5` |
| 6 | `def` | [extendChain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/extendchain.md) | 107 | `declaration-track:2eaa248cd3bdfb6411d9e2f3ce3646d05ab23c72b6d7a1cda33571a6b925df0a` |
| 7 | `theorem` | [extendChain_nil](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/extendchain-nil.md) | 117 | `result-track:903960bbab60e5d6db2a91c1255804acc38d421693c207ea9c33f67059428b55` |
| 8 | `theorem` | [extendChain_cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/extendchain-cons.md) | 123 | `result-track:d2f6d0cfe185795aa2430db48658962ac661bbc9d306fefe5c4f1ffee24041de` |
| 9 | `def` | [detEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/detequiv.md) | 136 | `declaration-track:9b04ed23386e5bf37633425288518a24c4638c16e53389f0274c889cefae1012` |
| 10 | `theorem` | [detEquiv_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/detequiv-id.md) | 144 | `result-track:94deb8fb956c2d00ac5df07b55a14f17905ffbd875713d8b819d8df016d13bc2` |
| 11 | `theorem` | [detEquiv_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/detequiv-comp.md) | 152 | `result-track:7f2e7dbab8b02e3054b5ace6bca42c72b9434d7c968c0c2075ba06c25e232b4d` |
| 12 | `structure` | [DeterminantScalarExtensionCompatibility](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/determinantscalarextensioncompatibility.md) | 170 | `declaration-track:c4825b206bca54c219503e72aac79109230da83db3fceb663b26570ab28c06e9` |
| 13 | `theorem` | [lineChange_detEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtension.lean/declarations/linechange-detequiv.md) | 200 | `result-track:d7e30d7bdda584a3d2bff4854db3e8010f82150825bdee841b3e8f42ad3a7fa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43d31237300739b49002eb6f7088eebe10e94566084f40868d363e4b794800d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
