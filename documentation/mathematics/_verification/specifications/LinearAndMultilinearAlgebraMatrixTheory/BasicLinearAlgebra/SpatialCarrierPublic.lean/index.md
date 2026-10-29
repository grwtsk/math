# Verification target: Spatial Carrier Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5dea29babee5da1beb4af2489f27ff218cf3926",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5dea29babee5da1beb4af2489f27ff218cf3926`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteHypergraph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitehypergraph.md) | 42 | `declaration-track:417a96ac2aa31503c46671423b77832989b3009e10e7c3d8ecc54a434b6dabc6` |
| 2 | `structure` | [TypeIIInteractionData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/typeiiinteractiondata.md) | 51 | `declaration-track:596c7da576861b58bb7847ed3abe74a43173467b0bc8e3a04088a18280c442fd` |
| 3 | `inductive` | [FiniteCellModel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitecellmodel.md) | 67 | `declaration-track:e5cfb1d5ebd1c34c13a23879bf0d3992ab6c82a40301462062647710c7bf9a3a` |
| 4 | `structure` | [FiniteGradedCarrier3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitegradedcarrier3.md) | 79 | `declaration-track:47459767dc2d57fd061c7e2bcf0e98415e3a0a68dd2cd0aae4b44bf033714742` |
| 5 | `instance` | [FiniteGradedCarrier3.instFintypeCell](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitegradedcarrier3-instfintypecell.md) | 95 | `declaration-track:805ad764ca6b6d1f7a605f89075c3262c05744ec90bb446d0e30c639059411e4` |
| 6 | `instance` | [FiniteGradedCarrier3.instDecidableEqCell](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitegradedcarrier3-instdecidableeqcell.md) | 99 | `declaration-track:d1ee5de8e4c88593bbc67e9b64daf69a43d7a80bf651586f290d376a55182375` |
| 7 | `structure` | [FiniteSubcomplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitesubcomplex.md) | 105 | `declaration-track:cc910c4fa3d85c4cb07885b78e9bf7f765a015aea7e210d5fd15a52479fb5112` |
| 8 | `def` | [FiniteGradedCarrier3.realizeCells](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitegradedcarrier3-realizecells.md) | 112 | `declaration-track:ed0167f7606f5f62c08f3dbb78b951dd736c36a977e6e43d130824f36e2ed0ec` |
| 9 | `def` | [FiniteGradedCarrier3.geometricRealization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitegradedcarrier3-geometricrealization.md) | 118 | `declaration-track:dcb3935416f8b5419e4474fe89e02a53abe4e63ee820a8ef458ca1bc77329cd2` |
| 10 | `structure` | [TypeIISpatialCarrier3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/typeiispatialcarrier3.md) | 126 | `declaration-track:10621e7b784ff7f12707bd3da045d5fa605bed67989fc56fb88ea31c3fb665b8` |
| 11 | `def` | [TypeIISpatialCarrier3.RealizesShadings](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/typeiispatialcarrier3-realizesshadings.md) | 136 | `declaration-track:c469784ea64ea9c3773342d388953c629e46e15cb6c992e2804a3d2251d7e909` |
| 12 | `def` | [FiniteSubcomplex.incidentEdges](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitesubcomplex-incidentedges.md) | 147 | `declaration-track:30aab1eed46af477af2751bdca24594257410e6371f84db99d7e20923a3bc66b` |
| 13 | `def` | [FiniteSubcomplex.incidentFaces](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitesubcomplex-incidentfaces.md) | 155 | `declaration-track:7d35e55951db92e58197b087b8d2127372ab5f57bcac60a203ba6e0c14da5f42` |
| 14 | `def` | [FiniteSubcomplex.linkAdjacent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/finitesubcomplex-linkadjacent.md) | 164 | `declaration-track:88eda8cc973b8f716633709b8336fd39d919e8d27e0fe18f9266225e2eb12add` |
| 15 | `structure` | [CombinatorialCircleLinkCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/combinatorialcirclelinkcertificate.md) | 174 | `declaration-track:5b34aacd85a4c0564178542d5d65001d29827776c0a4ebc747d9c095848bb9f3` |
| 16 | `structure` | [ClosedCombinatorialTwoManifoldCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/closedcombinatorialtwomanifoldcertificate.md) | 189 | `declaration-track:278fac51741fa5ed7fbcad6c665025aaf4fc72fef471c57e7533f7231be710bf` |
| 17 | `structure` | [CombinatorialSphereRecognition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/combinatorialsphererecognition.md) | 205 | `declaration-track:c70deab54c41d1d3da8b5c3e2995fa680998b8a99a427b57e032c00e1fed4e93` |
| 18 | `structure` | [SeparatesCarrierCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/separatescarriercertificate.md) | 213 | `declaration-track:cc549c6d738f0d9f6da91cf1b451f1efcfdfa6b80bce9c8ed2dbc4d950e2683d` |
| 19 | `structure` | [ValidCombinatorialNeck](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/validcombinatorialneck.md) | 233 | `declaration-track:838a2c6fb54e16d6eab08b1676f9ef8ee5db93ae4b9e7e92d24e17b8bba5fff5` |
| 20 | `inductive` | [NeckSide](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/neckside.md) | 241 | `declaration-track:87bc97fd6523fc134e0ad63c8cb196f0f99c65df34ce5c5d5cda7408e8678259` |
| 21 | `def` | [ValidCombinatorialNeck.sideCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/validcombinatorialneck-sidecarrier.md) | 248 | `declaration-track:9bde151467001f36e7036cf85da29128ad05e7c48d24e99b4e58e297efad3bc6` |
| 22 | `def` | [bipartiteMatrixPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/bipartitematrixpairing.md) | 260 | `declaration-track:25c5c834a82a58c0dc153ad8a4fe5706daadfa6eade45555688a23fba485e1b9` |
| 23 | `theorem` | [bipartiteMatrixPairing_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/bipartitematrixpairing-add.md) | 270 | `result-track:2aabb06445ba24d666afdd99e172324237fab9389de126d960ec22f0b0c782cc` |
| 24 | `theorem` | [bipartiteMatrixPairing_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/bipartitematrixpairing-sum.md) | 283 | `result-track:bf42bd37239e64d58bbeaae7ea86a06b7152e913fbf6156410c5fcc239365452` |
| 25 | `structure` | [TypeIIBlockSurgery](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/typeiiblocksurgery.md) | 317 | `declaration-track:4a7b9705dd0e4f9c9af0239d502ca6b21b65d38f65bcae61525012ee1bcfacf4` |
| 26 | `instance` | [TypeIIBlockSurgery.instFintypeChild](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/typeiiblocksurgery-instfintypechild.md) | 340 | `declaration-track:06f407931d28654b6e3e386e193bdc28165e2baeb48cf23ea1a7ca1d09ec8bf8` |
| 27 | `instance` | [TypeIIBlockSurgery.instDecidableEqChild](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/typeiiblocksurgery-instdecidableeqchild.md) | 350 | `declaration-track:0c911ae1419e53e56849b5cb5a49fc797469ef139a033052ca294dbde8256dec` |
| 28 | `structure` | [BlockAssignmentsRealizeNeckSides](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/blockassignmentsrealizenecksides.md) | 368 | `declaration-track:061acaac9e9315dfe79f87bca9090fe4fb65f93a2f19ecd8c7839ee0ac5be5ef` |
| 29 | `theorem` | [BlockAssignmentsRealizeNeckSides.side_has_child](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/blockassignmentsrealizenecksides-side-has-child.md) | 387 | `result-track:00e29a855a835d32bfa80b3b79e1eb69c8cbc21a3aba1bc8a0f3f3578b099bee` |
| 30 | `theorem` | [TypeIIBlockSurgery.leftBlock_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/typeiiblocksurgery-leftblock-unique.md) | 401 | `result-track:3e633c07d5fc173a47f62592d5c35762be264f11715f64a4f0852f13f548625a` |
| 31 | `theorem` | [TypeIIBlockSurgery.rightBlock_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/typeiiblocksurgery-rightblock-unique.md) | 416 | `result-track:a5617b750f6d3fbed09bf94ba696893866e37000bd41898a5fc78f05865d67bf` |
| 32 | `theorem` | [TypeIIBlockSurgery.pairing_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/typeiiblocksurgery-pairing-decomposition.md) | 432 | `result-track:cf81016dae07564e2fdc2bac30b1766a4783c809c61764bf3a3c979b23e3917b` |
| 33 | `def` | [CrossCorrelationBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierPublic.lean/declarations/crosscorrelationbound.md) | 454 | `declaration-track:501aa5a312c9640f4e715729ecbaef5de534523eaeee0297afa08fdf229657a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80c063d0de83031138e2a4f5e246a7938bc8f16c87aecf089810bcd76b1f7230 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
