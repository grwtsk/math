# Verification target: Binary Ricci Flow Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cd910a735e7283eccc57a900d22942c9beba223",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cd910a735e7283eccc57a900d22942c9beba223`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/bit.md) | 31 | `declaration-track:a1c428d16c659cae8f0126cf6841c3ff9e16f740bd39399f5f1ef88bdf48fc25` |
| 2 | `structure` | [BitWord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/bitword.md) | 33 | `declaration-track:b24a9175c5bc99a489792d88bd8bd97757be7b219aa5ae0bf87de359af90bf69` |
| 3 | `abbrev` | [PaddedBitState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/paddedbitstate.md) | 38 | `declaration-track:bc8b10c1de2fe337967d72ba8799d208ddaa85060452e028acf018ece6a47ef1` |
| 4 | `def` | [BitWord.toPadded](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/bitword-topadded.md) | 41 | `declaration-track:0c8bf244417dc99ffb5064529523494f080037ab9c52934425a099a01d1401cd` |
| 5 | `def` | [zeroBitWord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/zerobitword.md) | 50 | `declaration-track:b39878ca40e87f9a9953f78afa36486d1d68f4a7fa5de14ea262e5cbfe8255ba` |
| 6 | `theorem` | [zeroBitWord_toPadded_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/zerobitword-topadded-apply.md) | 56 | `result-track:1d1f2598c547d61738382a70f3bf13dbecbe996273ee02371aead02c008398f7` |
| 7 | `theorem` | [zeroBitWord_toPadded_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/zerobitword-topadded-eq.md) | 65 | `result-track:d32519e2f7729f52831310275b464a9fc46ca1d88b778df55f8226b697860100` |
| 8 | `def` | [bitReal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/bitreal.md) | 71 | `declaration-track:3b440f5615afa20acd8e2762f9d85f96565953a8fba50e2bc7cfdab09f093dcd` |
| 9 | `structure` | [GammaWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/gammaweight.md) | 75 | `declaration-track:83332ed1872de3fea32d0a28e417cd5d27db7a730110d021302044de0890a4ef` |
| 10 | `def` | [geometricWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/geometricweight.md) | 79 | `declaration-track:db4700350d18363106cb46a26b803079192599bfb0dcda64ea2e5304e17d4eb0` |
| 11 | `def` | [dyadicWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/dyadicweight.md) | 85 | `declaration-track:5d3d5dcdd339d6e2d4341e949517b8a82688f13d8523e107c4ee46e7c5904f00` |
| 12 | `def` | [triadicWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/triadicweight.md) | 88 | `declaration-track:258c0cfdba6c63d5b566d0d1e5d5c86142cf11ac717b0621faa2c6be65109907` |
| 13 | `def` | [supportBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/supportbound.md) | 91 | `declaration-track:ae23d4fd538991eab5b8aa80469e4672902fedd41b024f966bed70726bb921a3` |
| 14 | `theorem` | [supportBound_spec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/supportbound-spec.md) | 95 | `result-track:4bf408673204c6aa86c3fbd220c31174b68f2025050a2aa84a1b0a11b57655cf` |
| 15 | `def` | [dGamma](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/dgamma.md) | 101 | `declaration-track:6e3fecc99b22e3376ef6848cc808ec632b3963712f6d429b41dc3475759c1e6f` |
| 16 | `theorem` | [dGamma_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/dgamma-self.md) | 108 | `result-track:f9f044272a051c5a9203f859b61cd7735d8c41b72f178f092800446c34078b26` |
| 17 | `def` | [kernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/kernel.md) | 115 | `declaration-track:4587b25526a7387bf0e059bc89a9dbfd8d28452361ef1e9ee4b3ac0ccae3b7ee` |
| 18 | `theorem` | [kernel_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/kernel-self.md) | 122 | `result-track:3cd70da0d40af8eb578f363ec842188d0fc87066602ba411488ca76bcd8b6eb8` |
| 19 | `def` | [graphLaplacian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/graphlaplacian.md) | 130 | `declaration-track:cd6e60166568d153168182ef7aaf9360ae95fbeac9460af0e81147a417756d0f` |
| 20 | `theorem` | [graphLaplacian_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/graphlaplacian-const.md) | 141 | `result-track:d5517d53c23c35efb1ba9c8ed847fda76a5d665340826b525edb1b024bf3695f` |
| 21 | `abbrev` | [Fiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/fiber.md) | 151 | `declaration-track:67a8638b7922bb6e76b126d0256ba67f351cd5670abf989e3a6107e1d84fe533` |
| 22 | `def` | [vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/vsub.md) | 155 | `declaration-track:dd81610cb76ed56248c6f89428bc5fe04a901eeb5f73d518b3c31eb36747c414` |
| 23 | `theorem` | [vsub_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/vsub-self.md) | 161 | `result-track:da4d148eae95a8820291352cd13efcee85cc5d30fb23dfaeabcea7d257e15675` |
| 24 | `structure` | [DiscreteConnection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/discreteconnection.md) | 172 | `declaration-track:c4df30cfc6d51dc31ba3c4ad431c153aea9a1641159a222a21b8448386e07cf7` |
| 25 | `def` | [covariantDifference](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/covariantdifference.md) | 177 | `declaration-track:c69017c3022a747ced771f6d718737c2d1f2c2b98a2dc572ae85d728d1aa9bde` |
| 26 | `def` | [triangleCurvature](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/trianglecurvature.md) | 186 | `declaration-track:2da3ddfc1b615358a9caf12d39c8ec378d2c0d2d35b0eb7377578381de2377d0` |
| 27 | `structure` | [DiscreteTorsionDatum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/discretetorsiondatum.md) | 197 | `declaration-track:baa575db3fee0c13fda9af2e96cad5106b275596f95645b960a659f0fa24bcdb` |
| 28 | `structure` | [DiscreteRicciTensor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/discretericcitensor.md) | 207 | `declaration-track:cfa6dbcb0c5b175208177078b8209b5c1dfda366bf0ea1851d65ac6144990721` |
| 29 | `structure` | [DiscreteRicciFlow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/discretericciflow.md) | 214 | `declaration-track:e2488c0acb69832be225bf1660fab3e943afc87a7f45d117f4cc99bf22a6b964` |
| 30 | `def` | [carrierBitToBit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/carrierbittobit.md) | 224 | `declaration-track:6a763897e35c0e2d4b5cb4065f72f36e381d201dc71d52bdb5796772a63dac3f` |
| 31 | `theorem` | [carrierBitToBit_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/carrierbittobit-zero.md) | 229 | `result-track:847b1c8226b355283c579ee01a06f68e690ba25b4342e448d08599f32491a6d0` |
| 32 | `theorem` | [carrierBitToBit_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/carrierbittobit-one.md) | 234 | `result-track:826d356ff7cac8cccd019e84a53aadcba363a87e8e56cafc6f934dc2e744c726` |
| 33 | `def` | [binaryMatrixToBitWord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/binarymatrixtobitword.md) | 239 | `declaration-track:ca949825190fa13243af05e10948ae60bb187ffac1f7200ed2eff4c10534a3fc` |
| 34 | `theorem` | [binaryMatrixToBitWord_len](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/binarymatrixtobitword-len.md) | 259 | `result-track:0dfa3739a563bf4a6c354ec1d4b81825878bc791adce0e62a43e12d31864ba36` |
| 35 | `def` | [binaryMatrixToPadded](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/declarations/binarymatrixtopadded.md) | 267 | `declaration-track:d9cf7d46ecfdb74ddc06db1780ae5e70d348d2d6d3575139a1b5544b3e356b72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af0d106c9e6f7fe19e11954a9a2daecc549977e8cd1b83f80d12386241ab3860 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
