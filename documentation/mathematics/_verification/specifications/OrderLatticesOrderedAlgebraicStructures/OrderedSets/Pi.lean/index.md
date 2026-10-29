# Verification target: Pi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05ba06fb73eefede316f4d001a5c37941288f753",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant311bc037e0e59a9a535a6d133e5bc25148f8c26e10e3a9e88a4d8e036c650cb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05ba06fb73eefede316f4d001a5c37941288f753`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant311bc037e0e59a9a535a6d133e5bc25148f8c26e10e3a9e88a4d8e036c650cb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant311bc037e0e59a9a535a6d133e5bc25148f8c26e10e3a9e88a4d8e036c650cb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.BooleanAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Piecewise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.UnorderedInterval` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pi_univ_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-ici.md) | 32 | `result-track:0d8716aba77b0fbd536d276353a5e1c6948c3329c1e0de772b4b34f990a3a6be` |
| 2 | `theorem` | [pi_univ_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-iic.md) | 36 | `result-track:bd95c1e2ba67f7e5fc24b2295fe31b9fe76c00a40b8ed5a277da36cfb6856a31` |
| 3 | `theorem` | [pi_univ_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-icc.md) | 40 | `result-track:e4d0d75ee5eddc69e5fe289952206d046736c675711280888f99461778e4d5ed` |
| 4 | `theorem` | [piecewise_mem_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/piecewise-mem-icc-source-edition-2.md) | 43 | `result-track:7e07a7b69d98e994bf2fed2aef9ae2cade7dedf9a0fdc09eddd658a12fe16754` |
| 5 | `theorem` | [piecewise_mem_Icc'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/piecewise-mem-icc.md) | 49 | `result-track:4ddd7b1c144212e11852ffd47b448044420f6d0bd2425e5780f2eaa5f30eb6e1` |
| 6 | `theorem` | [pi_univ_Ioi_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-ioi-subset.md) | 55 | `result-track:12474527734c2663af38fc13dd2774342ab60dc15cb43d089f0e2d6004c6a3c6` |
| 7 | `theorem` | [pi_univ_Iio_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-iio-subset.md) | 59 | `result-track:ae24dc360bb66a25bf878ddabfab74f08d39a19b251ae4cce317754214316c9c` |
| 8 | `theorem` | [pi_univ_Ioo_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-ioo-subset.md) | 62 | `result-track:5a60056e42adf1c97bae1e4dc6a2b67ad22887bb9cb4ca8304b34924174d729e` |
| 9 | `theorem` | [pi_univ_Ioc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-ioc-subset.md) | 65 | `result-track:cdf65674e1bfe93fabe1a0fb6bd33f0b19b096fb91741bd46474562d06887810` |
| 10 | `theorem` | [pi_univ_Ico_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-ico-subset.md) | 68 | `result-track:0660b484382c206afe30575885ef81f4f4352f4f81f5f95f036c4d6b70b960b2` |
| 11 | `theorem` | [pi_univ_Ioc_update_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-ioc-update-left.md) | 77 | `result-track:3495a08bf3101800a8902f293b3b774becf8abb594f55e58d758e3a22f272e6f` |
| 12 | `theorem` | [pi_univ_Ioc_update_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-ioc-update-right.md) | 87 | `result-track:20436b8451fc7c8e36e69cad993d9e413f11c1e7cb43cb401f219c9b77a2b8d1` |
| 13 | `theorem` | [disjoint_pi_univ_Ioc_update_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/disjoint-pi-univ-ioc-update-left-right.md) | 97 | `result-track:f26f85d30b3b3dae37ffcfcadda16ecca99aae235a52d215e3ccd4a864bda597` |
| 14 | `theorem` | [image_update_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-icc.md) | 112 | `result-track:4c91bcbcf592e83e8cc1f04f2d921d4590fc47e32e71ee3c2a141ff8cce018c6` |
| 15 | `theorem` | [image_update_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-ico.md) | 125 | `result-track:0708217f76214f987cc399b9b251c6f6ade760a1cae24e46b1a5a3d80e0aec8f` |
| 16 | `theorem` | [image_update_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-ioc.md) | 130 | `result-track:77940871f2eeb7e9d480690ca74242dc7973f71a4f8ec769a678d2d9e86023a5` |
| 17 | `theorem` | [image_update_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-ioo.md) | 135 | `result-track:a6ce60735b72c8cee624d632a5e5156cefe750a88bfb1b6ca86492feb2048545` |
| 18 | `theorem` | [image_update_Icc_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-icc-left.md) | 140 | `result-track:f2db892d3adc97ec8ca3057f4613fc4b525f6c0f428eb55e3df1a0b392848038` |
| 19 | `theorem` | [image_update_Ico_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-ico-left.md) | 143 | `result-track:d71ea39eef59edd3b6c55873b9b3401640d263b1ff338257f27e26241b068a13` |
| 20 | `theorem` | [image_update_Ioc_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-ioc-left.md) | 146 | `result-track:dd25c21c0631ffe186ccb1093a47f8e14c891975022d9eb56cb915999ed8d7f0` |
| 21 | `theorem` | [image_update_Ioo_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-ioo-left.md) | 149 | `result-track:cc7ec2fbd7f9a32b5b6c81ed69658da2cd8a3c95e385a3f253d1feefe2efe40d` |
| 22 | `theorem` | [image_update_Icc_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-icc-right.md) | 152 | `result-track:83c310267958197026fbe47509e3b8868e5b60f1c6285425eeac1528e5d84a9e` |
| 23 | `theorem` | [image_update_Ico_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-ico-right.md) | 155 | `result-track:f9f50c70cd929b182744c9bcb251ce085e2e21d0c16cfca134f294b54b305c60` |
| 24 | `theorem` | [image_update_Ioc_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-ioc-right.md) | 158 | `result-track:70b6e3b71522f65c29d24cfc97894010d9b3cf3a006c748dff20c3c3c7dda21e` |
| 25 | `theorem` | [image_update_Ioo_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-ioo-right.md) | 161 | `result-track:5979f0dbbb5df2acaed5b8fe3f45cf46763bd7dcb16366a30913439abe8184e7` |
| 26 | `theorem` | [image_mulSingle_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-icc.md) | 167 | `result-track:9828bea5cbd735e40d206eedf3aeb243ed880974eae92c7cd68c9c3b40a1549e` |
| 27 | `theorem` | [image_mulSingle_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-ico.md) | 172 | `result-track:63f106889157866caf55065abc339a4af046656bf3c8582f039473681f242748` |
| 28 | `theorem` | [image_mulSingle_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-ioc.md) | 177 | `result-track:0f940ada0548f9119dc1e7ed920ee0e3476aff4cfe461e3a9ea295e6c06b811c` |
| 29 | `theorem` | [image_mulSingle_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-ioo.md) | 182 | `result-track:1dab80dccccae0e0e7380c2a74ddfcb1925d0aa80dd18d651a2a0dcf72ebf5a7` |
| 30 | `theorem` | [image_mulSingle_Icc_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-icc-left.md) | 187 | `result-track:ad108255985bb752f9ddae5fb7bba775b6594530fb342e85105f9dc70b6b5ce5` |
| 31 | `theorem` | [image_mulSingle_Ico_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-ico-left.md) | 192 | `result-track:7540f0c888b15932d103607081c440825dd1e5d010244beebb0e2fd94917bd34` |
| 32 | `theorem` | [image_mulSingle_Ioc_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-ioc-left.md) | 197 | `result-track:a32673dfd3f5deb0ff6d516fee76d4f0b20a57c2855fe2ab1bd89d4428ab998a` |
| 33 | `theorem` | [image_mulSingle_Ioo_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-ioo-left.md) | 202 | `result-track:6fdba19440ec75cd8db26ca71a8388bb4e6007376a3aa5177f46a6acc8f6ea97` |
| 34 | `theorem` | [image_mulSingle_Icc_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-icc-right.md) | 207 | `result-track:f6effa223ec538c95a1bea39249f694f9ff8cffc0987a5165b6a395ec7f331a7` |
| 35 | `theorem` | [image_mulSingle_Ico_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-ico-right.md) | 212 | `result-track:865dfc9c7db137d90370d28335aff39f22c4243d834bf021595f009abd32fc23` |
| 36 | `theorem` | [image_mulSingle_Ioc_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-ioc-right.md) | 217 | `result-track:6a746f48ac7d132208addaf5ba63b2892915e2b3f436558f163b872b1caf9eb1` |
| 37 | `theorem` | [image_mulSingle_Ioo_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-ioo-right.md) | 222 | `result-track:ffa9db00b323a9188d7c963d5846b54dc8764d25e6a47b35ede224bdc3936478` |
| 38 | `theorem` | [pi_univ_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-uicc.md) | 233 | `result-track:ab37d438674057da2666ea1e426a55bc8b9f444694215ef2aed701c8d3ec856e` |
| 39 | `theorem` | [image_update_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-uicc.md) | 238 | `result-track:1aa1330b4787dd520f417fe4aa8d66d369052be7ef9e3837919472cb453947b5` |
| 40 | `theorem` | [image_update_uIcc_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-uicc-left.md) | 242 | `result-track:2daf1783947c29dd345ce905dc39df2e854ad933a90acf9bac5b25fdd8a7e452` |
| 41 | `theorem` | [image_update_uIcc_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-update-uicc-right.md) | 246 | `result-track:8ad7abde5d43fed31cea49d22e07fc370f714223a1f3dcc83592e4eae8170961` |
| 42 | `theorem` | [image_mulSingle_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-uicc.md) | 253 | `result-track:58f6118cb7dd0385d76aafc5031fea4cd14b6148cb5bb46435ee7a9fa41d3940` |
| 43 | `theorem` | [image_mulSingle_uIcc_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-uicc-left.md) | 258 | `result-track:1a70fcbea412cc0ac784b7eb1c6c7586d4ea5cce079c47a1e5eb8f9c95d93354` |
| 44 | `theorem` | [image_mulSingle_uIcc_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/image-mulsingle-uicc-right.md) | 263 | `result-track:ba2add1bf5bd9c4ad7867c8081454f82c3e67027c01d7f4add50c1cf780de17e` |
| 45 | `theorem` | [pi_univ_Ioc_update_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/pi-univ-ioc-update-union.md) | 273 | `result-track:893992189fc4aa16784cb80540f8c0651aa8b48fd5ca3d449ff2ddee87fa3a0c` |
| 46 | `theorem` | [Icc_diff_pi_univ_Ioo_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/icc-diff-pi-univ-ioo-subset.md) | 288 | `result-track:5abc9fb21835404793706029431b41aab27c7e44f1b056fc052480f26d873adf` |
| 47 | `theorem` | [Icc_diff_pi_univ_Ioc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Pi.lean/declarations/icc-diff-pi-univ-ioc-subset.md) | 306 | `result-track:e12da7d96c9748296f0d4f85c0c61c42cdc8583c46c6676ba62d35270546a205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4dfcc425770b421adfda5477c0736247392e1baa066f679310014c3fe70d89ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant311bc037e0e59a9a535a6d133e5bc25148f8c26e10e3a9e88a4d8e036c650cb5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant311bc037e0e59a9a535a6d133e5bc25148f8c26e10e3a9e88a4d8e036c650cb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
