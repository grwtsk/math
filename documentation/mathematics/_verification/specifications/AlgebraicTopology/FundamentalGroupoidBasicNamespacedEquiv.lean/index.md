# Verification target: Fundamental Groupoid Basic Namespaced Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c862cafeaf6055b73ba26559769ec4f40e1528c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/index.md) · [Full source](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c862cafeaf6055b73ba26559769ec4f40e1528c`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Grpd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reflTransSymmAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/refltranssymmaux.md) | 47 | `declaration-track:cb4098163f3df16444afb9482cab01e9762a0dc9b60f678ae36826e901c2a5b0` |
| 2 | `theorem` | [continuous_reflTransSymmAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/continuous-refltranssymmaux.md) | 51 | `result-track:65b0ea21b25915ad65800c55754574b0c58990b382039f62c14c2fa5b7d3c121` |
| 3 | `theorem` | [reflTransSymmAux_mem_I](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/refltranssymmaux-mem-i.md) | 60 | `result-track:871eb9bae23ebc40eb93c68edb72201e81ad2cbc79c07e1154f9eb216929689c` |
| 4 | `def` | [reflTransSymm](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/refltranssymm.md) | 87 | `declaration-track:11a42eb2fe921f387b245d9967cc0fb76eb826a129f4524b32e6dacbc712fbe0` |
| 5 | `def` | [reflSymmTrans](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/reflsymmtrans.md) | 104 | `declaration-track:8ca5332eb8e7337cd339a16320722d60c596d278c8501f07dd49f967ac68b03b` |
| 6 | `def` | [transReflReparamAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transreflreparamaux.md) | 112 | `declaration-track:c3657496944f5b6c02a87cc2ac5fa50fd68d67d29f68c4e5bb3b2be6d95541ff` |
| 7 | `theorem` | [continuous_transReflReparamAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/continuous-transreflreparamaux.md) | 116 | `result-track:a0ede099f1c0222de458f1045f124fe3d3cf6cb10d0ac12237edb9d5f40669ef` |
| 8 | `theorem` | [transReflReparamAux_mem_I](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transreflreparamaux-mem-i.md) | 122 | `result-track:478bac6d9b1b66209c1e5c6e1b1284f0970f679e18f485dc242bdf305a5b81e8` |
| 9 | `theorem` | [transReflReparamAux_zero](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transreflreparamaux-zero.md) | 126 | `result-track:d01b16579fc2c9dfddc0f9b069f65415da949b71b5eae29c040379542164cb11` |
| 10 | `theorem` | [transReflReparamAux_one](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transreflreparamaux-one.md) | 129 | `result-track:0e451e6ff78b4d61f1da1ecd59f505a9bd0ffa8ec6ebcf5e66cb6f6064f8983e` |
| 11 | `theorem` | [trans_refl_reparam](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/trans-refl-reparam.md) | 132 | `result-track:a58fa83f5c797eb89e7dc9e0aa25a63382758601b7b4712d7580c8dbc9de6e00` |
| 12 | `def` | [transRefl](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transrefl.md) | 146 | `declaration-track:a0de292463e949f173adcd4c0c6dfd0621744437db91380db7fd19999898507c` |
| 13 | `def` | [reflTrans](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/refltrans.md) | 153 | `declaration-track:c8410febdb9d19f40e7aa7f35f18d9f732b3d3fee43e399c56d386e2af3de5f8` |
| 14 | `def` | [transAssocReparamAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transassocreparamaux.md) | 161 | `declaration-track:5e30850c74ca327c28c7aa63d9ab35f619965ad534c34da46f9e8d96fb8e963f` |
| 15 | `theorem` | [continuous_transAssocReparamAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/continuous-transassocreparamaux.md) | 165 | `result-track:e197dca3a8b7ad20a4332688892303f1de8f78920dce23e232f61626aa9873b1` |
| 16 | `theorem` | [transAssocReparamAux_mem_I](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transassocreparamaux-mem-i.md) | 175 | `result-track:88f1288dfd5a4a19e056a2f585620ba0c1aff9efabacb583268cc3a9844ee9ad` |
| 17 | `theorem` | [transAssocReparamAux_zero](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transassocreparamaux-zero.md) | 179 | `result-track:ddef89a8ba47ab877cb95d4432acfdcf5f491be230ca1b667449bacddbdc7d53` |
| 18 | `theorem` | [transAssocReparamAux_one](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transassocreparamaux-one.md) | 182 | `result-track:e0c120d08d6c60336d427a35c9aef832ef8b59a252774cc7e6199fbfb12852f5` |
| 19 | `theorem` | [trans_assoc_reparam](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/trans-assoc-reparam.md) | 185 | `result-track:036372bc0ded6001eda6ce7dc2e46ef59a103fe0815e7161920cfa89ab70f52c` |
| 20 | `def` | [transAssoc](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/transassoc.md) | 205 | `declaration-track:0e59c0f0c3ad26b89e6c792f5e1d0f810d0f020466b0f3b9831339355d2f40b7` |
| 21 | `structure` | [FundamentalGroupoid](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/fundamentalgroupoid.md) | 221 | `declaration-track:3abd1bc4d7db3daf70060d4675440963ca07e955a385119bb74bf29f460d728a` |
| 22 | `def` | [equiv](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/equiv.md) | 231 | `declaration-track:55f882e25b9d67cacaee5c224bdeb39ad0a0a3e04efeac9a4fe848caeec9b607` |
| 23 | `lemma` | [isEmpty_iff](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/isempty-iff.md) | 238 | `result-track:041ed1750dca6c67d0f53967a929f171606195714111e97a7ebde1cf6235dadb` |
| 24 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/instance-source-edition-4.md) | 242 | `declaration-track:791f48c32cb4ac801962d2f89aa6c43041589d35242ba7f74f209cecbde24d46` |
| 25 | `lemma` | [nonempty_iff](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/nonempty-iff.md) | 247 | `result-track:8484081e46504fe5d6fefad04d25d3e92a3956d03ce8482d5b9f265f078aeef0` |
| 26 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/instance.md) | 251 | `declaration-track:1e4ac43a8d0ca688344f5a6e7e2884b204486973706da58e3706daacac27070b` |
| 27 | `lemma` | [subsingleton_iff](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/subsingleton-iff.md) | 256 | `result-track:798475be2534edd7c4028855ed4c7dcd15e00e6da0c83f5927fbd3d97e23995f` |
| 28 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/instance-source-edition-2.md) | 260 | `declaration-track:31907dd554e7bb9b3c5b8542d49bd944860764b60607af6343feaebe2f495202` |
| 29 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/instance-source-edition-5.md) | 267 | `declaration-track:e31e3ff9a1f3ece08e510b25516c9211404819313b7ccf01106d20a2922992f6` |
| 30 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/instance-source-edition-3.md) | 272 | `declaration-track:5d855da950a589cd180623b0377708fbbe43d4408a5fe56bb3c1898571883c9c` |
| 31 | `theorem` | [comp_eq](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/comp-eq.md) | 303 | `result-track:6fe93cd5f58adc84d2a724cffcf8084df4ff4d5cfece4d41e29178057ed3164d` |
| 32 | `theorem` | [id_eq_path_refl](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/id-eq-path-refl.md) | 305 | `result-track:9fde222d23b64d3c3068e10086e48da81b1776cfdf9a547d062b7a4e31310d2b` |
| 33 | `def` | [fundamentalGroupoidFunctor](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/fundamentalgroupoidfunctor.md) | 308 | `declaration-track:7c8a229d77ab640ee341cbc8d2af8198dbc1cfdae6b0557e198e7aaecb74448b` |
| 34 | `theorem` | [map_eq](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/map-eq.md) | 342 | `result-track:1997579c25a4d05a8c387b4ad999586e5d168a1282d2e7f263d1c031a392330f` |
| 35 | `abbrev` | [toTop](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/totop.md) | 347 | `declaration-track:d1fa1493f3b275fa6697b43a4ef01be0b0d0e3fc9736a16ef0c3655ba19e540d` |
| 36 | `abbrev` | [fromTop](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/fromtop.md) | 351 | `declaration-track:ee676b990b426f4f93de09c69a8759c16ad51aef2a807429038977ed136a8e2b` |
| 37 | `abbrev` | [toPath](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/topath.md) | 355 | `declaration-track:c1e1e6d39b7247b1db6571be14c4c86410102011898fa552f71e40ca5e00a67a` |
| 38 | `abbrev` | [fromPath](../../../../AlgebraicTopology/FundamentalGroupoidBasicNamespacedEquiv.lean/declarations/frompath.md) | 361 | `declaration-track:486abed2620979ab30f616ca771130f6ffa2f986fd4a521c9fbb653497605fe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d4fd03d022eaf7edbbdfc11fad4546c2c2ae0d5479b0dcff09542b728b4a8d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
