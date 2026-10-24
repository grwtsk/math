# Verification target: GRWTSK.Topology.MetricTopology.SpheroidBanach.Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4974d23a26c4924f77d0b2687862a631cf2e31b",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4974d23a26c4924f77d0b2687862a631cf2e31b`.

Source path: `GRWTSK/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/finitespheroidchart--77caa5bdcd4879112e618f4e.md) | 54 | `declaration-track:77caa5bdcd4879112e618f4e35e0d322f4d1fd90a1301185d2e7467e757f2460` |
| 2 | `def` | [coordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/coordinates--55051720fc9e7c017fba01b3.md) | 63 | `declaration-track:55051720fc9e7c017fba01b3bffd061d477fe409a2f6d0c9db25a8e2202497cb` |
| 3 | `def` | [ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/ofcoordinates--1b0c3810261f87cdbbfe3d6f.md) | 69 | `declaration-track:1b0c3810261f87cdbbfe3d6fd15dbe5ab9a09562a976a9d83484e37cc2fa454e` |
| 4 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/ext--f3a0a798a652fb21b6874f91.md) | 74 | `result-track:f3a0a798a652fb21b6874f91f5a0466ce607ed693fbee3bfcfc2b7a729055c45` |
| 5 | `def` | [chartEquiv](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/chartequiv--232785fc657d5bd9a12839de.md) | 82 | `declaration-track:232785fc657d5bd9a12839def196266acab7ee010f5b19de53fc7c1182d1f3e2` |
| 6 | `theorem` | [chartEquiv_apply](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/chartequiv-apply--f74cb190e0dc8877e6e5611a.md) | 92 | `result-track:f74cb190e0dc8877e6e5611a369503ca61b1b4b721f201befccdf33373094564` |
| 7 | `theorem` | [chartEquiv_symm_apply](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/chartequiv-symm-apply--50be83eed79f7290e527cb06.md) | 97 | `result-track:50be83eed79f7290e527cb06c78f037fec8540a2cbb7dff50561d98258c8f2bd` |
| 8 | `theorem` | [coordinates_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/coordinates-ofcoordinates--ba78d00edbe1c0014e0f53eb.md) | 103 | `result-track:ba78d00edbe1c0014e0f53eb62a0987772c8870658b8b70f4fb9473ffa276e6b` |
| 9 | `theorem` | [ofCoordinates_coordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/ofcoordinates-coordinates--21e81f6fc52bd86b34d54f2f.md) | 108 | `result-track:21e81f6fc52bd86b34d54f2f9eff49c560ac0aa3948f621ef834427708c7fbfc` |
| 10 | `instance` | [instAddCommGroupFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/instaddcommgroupfinitespheroidchart--1b635179648e9cffcbbf602f.md) | 116 | `declaration-track:1b635179648e9cffcbbf602f44d08e9e4cb6b38a206eb9035fdd36c8aac7e896` |
| 11 | `instance` | [instModuleFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/instmodulefinitespheroidchart--e0ef7e80dbbf89b3be87ca5a.md) | 120 | `declaration-track:e0ef7e80dbbf89b3be87ca5aaf9d5f3fdffb84f21f2dbffefe7b208ab2c0eb75` |
| 12 | `instance` | [instNormedAddCommGroupFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/instnormedaddcommgroupfinitespheroidchart--4ce0b7312850a4204606b3b3.md) | 123 | `declaration-track:4ce0b7312850a4204606b3b394cc7dcdda38bc5826ec9e400d3f1a00474a181a` |
| 13 | `instance` | [instNormedSpaceFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/instnormedspacefinitespheroidchart--9b7c4be8e6d6962b8beece15.md) | 127 | `declaration-track:9b7c4be8e6d6962b8beece159544bfb96e3105e9f4eccdcb75ed11e8abf6881c` |
| 14 | `def` | [chartLinearIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/chartlinearisometryequiv--2d914fcb18a7a14d583cbce4.md) | 132 | `declaration-track:2d914fcb18a7a14d583cbce411053b5d955efcc9b911eaeb67a116bed70b9b21` |
| 15 | `theorem` | [chartLinearIsometryEquiv_apply](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/chartlinearisometryequiv-apply--0ac97406d4e6aca9f6bf2b9f.md) | 138 | `result-track:0ac97406d4e6aca9f6bf2b9f13d07f37180486efb2d749037cf50c247d821910` |
| 16 | `theorem` | [chartLinearIsometryEquiv_symm_apply](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/chartlinearisometryequiv-symm-apply--b42ef68329195ddfdd29c031.md) | 144 | `result-track:b42ef68329195ddfdd29c031aeb94988a9b0eb1b9654b8d0a658d01779d5b512` |
| 17 | `instance` | [instCompleteSpaceFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/instcompletespacefinitespheroidchart--87b11d4b97d54e0a400b5ce7.md) | 152 | `declaration-track:87b11d4b97d54e0a400b5ce73d33419834935968e4c25121ff9747d2b392fa52` |
| 18 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/completespace--19af84b3b2b9af91e8b085e9.md) | 157 | `result-track:19af84b3b2b9af91e8b085e9696986933e4ce92f67a0c49ea387d415018b8125` |
| 19 | `theorem` | [finiteSpheroidChart_isComplete_univ](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/finitespheroidchart-iscomplete-univ--a89c5300fb9a4640eab8ba55.md) | 164 | `result-track:a89c5300fb9a4640eab8ba55ccca0c0d4cea302f2dd88b1c881812ad923b43f2` |
| 20 | `theorem` | [coordinates_zero](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/coordinates-zero--e7129e5be542854414416a48.md) | 169 | `result-track:e7129e5be542854414416a481bf567b5ae88b6eac4d2c58983ae190c1a8924a6` |
| 21 | `theorem` | [coordinates_add](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/coordinates-add--aba055a7d82c6c73951c2fb9.md) | 174 | `result-track:aba055a7d82c6c73951c2fb96195f8e0506c5825507c2bdcad010c16d201ea65` |
| 22 | `theorem` | [coordinates_neg](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/coordinates-neg--61b6928e07c793dbef4fe137.md) | 179 | `result-track:61b6928e07c793dbef4fe137ba8c1c7988f5fcaf691c8c6a58c7eec29208636f` |
| 23 | `theorem` | [coordinates_sub](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/coordinates-sub--530ec5752291ed80f128a16b.md) | 184 | `result-track:530ec5752291ed80f128a16b8fd11f9dfcb305342d66dcc21008f8a4a84ef692` |
| 24 | `theorem` | [coordinates_smul](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/coordinates-smul--d0c8f0ecf9d02d4327f0dc35.md) | 189 | `result-track:d0c8f0ecf9d02d4327f0dc35ffe402c42071ba583fea2642bc4921fd6fd989b8` |
| 25 | `theorem` | [zero_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/zero-eq-ofcoordinates--b78b6c4a24bf6ddb95013f71.md) | 197 | `result-track:b78b6c4a24bf6ddb95013f71d89c9b027f88682068eef7f2777bee4241a6f13e` |
| 26 | `theorem` | [zero_ambient_eq_south](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/zero-ambient-eq-south--5d36dbf267c8c4314701faee.md) | 205 | `result-track:5d36dbf267c8c4314701faee9628c7746374002ec96da49bd36e2493341d219a` |
| 27 | `theorem` | [add_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/add-eq-ofcoordinates--e1904d0b964f931967b75722.md) | 213 | `result-track:e1904d0b964f931967b75722bb0c9341fc49d8e21d781391a3e98cdacf757698` |
| 28 | `theorem` | [neg_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/neg-eq-ofcoordinates--ee24c077c067c43fc801e00b.md) | 220 | `result-track:ee24c077c067c43fc801e00bab388a481a6522198c7412f640e66a95a46ea971` |
| 29 | `theorem` | [sub_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/sub-eq-ofcoordinates--d0fb3dfd191c6e55b8d456a4.md) | 227 | `result-track:d0fb3dfd191c6e55b8d456a4ea73e62ff3a754207d273989cb7c12298d4e39a6` |
| 30 | `theorem` | [smul_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/smul-eq-ofcoordinates--906cd60eb567d9561cda3409.md) | 234 | `result-track:906cd60eb567d9561cda3409c14fe6e573337931db8d308acd88f7ac59df54a2` |
| 31 | `theorem` | [norm_eq_coordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/norm-eq-coordinates--858d48197f70e5074b57af73.md) | 242 | `result-track:858d48197f70e5074b57af73fbfa26641dccca31e1a5c3b3f54ee4abde956c43` |
| 32 | `theorem` | [norm_eq_polar_formula](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/norm-eq-polar-formula--66dfecc41608bf0e8f19daee.md) | 250 | `result-track:66dfecc41608bf0e8f19daee0a2cbdf0f96fed04700ff9560f8066f0babca5d9` |
| 33 | `theorem` | [dist_eq_coordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/dist-eq-coordinates--30ee53814d31523cdb08b4a9.md) | 261 | `result-track:30ee53814d31523cdb08b4a97b499ed1d34bf6eefb7163d34998c73093d5ed22` |
| 34 | `theorem` | [polar_eq_norm_formula](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/polar-eq-norm-formula--52dd9a676010a63ab9b12ba2.md) | 268 | `result-track:52dd9a676010a63ab9b12ba2943052ae47a813a840075f74efbc3841f0aa0824` |
| 35 | `theorem` | [northGap_eq_norm_formula](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean/declarations/northgap-eq-norm-formula--bb60db09d6494e63714af821.md) | 286 | `result-track:bb60db09d6494e63714af8210389f71518c25e84f26d3cb6535fbd9b1808d0ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
