# Verification target: Crossed Product Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c7b5c5b2f60a71c2245016d08048d38d2ef1182",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CrossedProduct/Variantc4a004155ceed7cca38d10f3d1aa4f129ab93e4dcdcbc74da22e35df175da8c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c7b5c5b2f60a71c2245016d08048d38d2ef1182`.

Source path: `GRWTSK/Algebra/GroupTheory/CrossedProduct/Variantc4a004155ceed7cca38d10f3d1aa4f129ab93e4dcdcbc74da22e35df175da8c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CrossedProduct/Variantc4a004155ceed7cca38d10f3d1aa4f129ab93e4dcdcbc74da22e35df175da8c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ConnesBitfield.System` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitfieldAutomorphismAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/bitfieldautomorphismaction.md) | 17 | `declaration-track:084913483b1d3a39e837d85116a2b2d8695c8170ffd93c3bb226f19121623232` |
| 2 | `abbrev` | [CrossedProductElement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/crossedproductelement.md) | 53 | `declaration-track:4f64080d4cc387286d49bca16bfa8d5a930ec5a29a046032d6d04507295d91fd` |
| 3 | `def` | [crossedProductMultiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/crossedproductmultiply.md) | 58 | `declaration-track:ffdff617efd93d06526c56a9b9c4454e1d3be2c266e1e61ae50db37e2d2f597b` |
| 4 | `def` | [crossedProductStar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/crossedproductstar.md) | 76 | `declaration-track:4c9311a503c49139aeaaba4093342ec927e67700fd98f9bd56ba3f7ec820815b` |
| 5 | `def` | [canonicalCrossedProductTrace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/canonicalcrossedproducttrace.md) | 94 | `declaration-track:b94cc1e6843b84ca75099491e8eb61b8434c9d0032467de7627f985f431acb94` |
| 6 | `structure` | [CrossedProductLawCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/crossedproductlawcertificate.md) | 103 | `declaration-track:cdec30cf935c455be7ffe62ffe54404994f29669171a3de1ba5477d812e17d31` |
| 7 | `structure` | [FiniteCrossedProductModel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/finitecrossedproductmodel.md) | 140 | `declaration-track:40e24abb037630d5e6d82ea98965f63e10351c53dbe27d4d0c87e540f00d6d88` |
| 8 | `structure` | [EquivariantArithmeticBitfieldEncoding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/equivariantarithmeticbitfieldencoding.md) | 163 | `declaration-track:d49cd235a08feda3f7e5b195260803f02dbfbd7b71cefa353185d179aaab5456` |
| 9 | `abbrev` | [SupportedBitfield](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/supportedbitfield.md) | 189 | `declaration-track:742cf164b566e63f92b171397cd718f52ca9f6526e98171657895b649773d942` |
| 10 | `def` | [supportedBitfieldAct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/supportedbitfieldact.md) | 194 | `declaration-track:95c7ad95d183d29a46d5ddef820fe89c76416a717a484ea062d3d4debb7aa4f6` |
| 11 | `abbrev` | [BitfieldHilbertIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/bitfieldhilbertindex.md) | 204 | `declaration-track:9bbe328f674c57601969c908ac73ff3967b2d76f9f3f95ff6d6173bedee5c789` |
| 12 | `abbrev` | [BitfieldHilbertVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/bitfieldhilbertvector.md) | 209 | `declaration-track:63fff6e2ea41227d43ca2ec1682592e4291e6dd90fdf6ba64d28c0a48d8929e1` |
| 13 | `def` | [weightedHilbertInner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/weightedhilbertinner.md) | 214 | `declaration-track:2e17e696db3ed173cf890b135342a19b71d833f0389a37a60fbcfc9924786ba6` |
| 14 | `structure` | [CrossedProductRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossedProductSourceEdition1.lean/declarations/crossedproductrepresentation.md) | 231 | `declaration-track:b85610b17286d8bd347b09375aed99f6fb4149c5c447d127800026fa001e1cd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03357be3b1077ed3561fda97002216a5d66feb76bdc74e2d30c0c390ee7b3db3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CrossedProduct/Variantc4a004155ceed7cca38d10f3d1aa4f129ab93e4dcdcbc74da22e35df175da8c5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CrossedProduct/Variantc4a004155ceed7cca38d10f3d1aa4f129ab93e4dcdcbc74da22e35df175da8c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
