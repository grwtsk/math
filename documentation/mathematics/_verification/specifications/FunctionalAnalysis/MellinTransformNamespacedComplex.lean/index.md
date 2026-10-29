# Verification target: Mellin Transform Namespaced Complex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac40eca236d0582f2c5da6432498f6bc604fd20",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/index.md) · [Full source](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac40eca236d0582f2c5da6432498f6bc604fd20`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MellinConvergent](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellinconvergent.md) | 49 | `declaration-track:3297b8f9e9d1640e4ebce264a7db4cc65d1ebaae95e879b834fe80dc8e20e9a2` |
| 2 | `theorem` | [MellinConvergent.const_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellinconvergent-const-smul.md) | 52 | `result-track:2504ee25350a83e90239a2d9651ef5c8e43608b77b5f91a61548576a00233034` |
| 3 | `theorem` | [MellinConvergent.cpow_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellinconvergent-cpow-smul.md) | 57 | `result-track:c47c3bda9aaf0d826047dd68ffe7a7259662fc0c46ddcd212022cd0e3c0c2975` |
| 4 | `theorem` | [MellinConvergent.div_const](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellinconvergent-div-const.md) | 62 | `result-track:623ca4c4e1b35bff9730f6f65c7e068651ff8f54eebe374126cd2280d609a132` |
| 5 | `theorem` | [MellinConvergent.comp_mul_left](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellinconvergent-comp-mul-left.md) | 66 | `result-track:f655f99160e473df40777ad781b606adfa22d8a74a7a9e458ae10d79d328aa72` |
| 6 | `theorem` | [MellinConvergent.comp_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellinconvergent-comp-rpow.md) | 79 | `result-track:84202ed400b3a6e1fe1c15bdbab2de7cdf6d2bfce4cea4a173015d5a1ad46cd2` |
| 7 | `def` | [Complex.VerticalIntegrable](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/complex-verticalintegrable.md) | 91 | `declaration-track:ec9948d836741062a9e5970fee4eaa606a46234747646ff80fe3d0a52b8cafad` |
| 8 | `def` | [mellin](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin.md) | 96 | `declaration-track:3b3b90fd09392b740584755b5d51992ed7f3bda8cc9f5e1f698e54618f609dae` |
| 9 | `def` | [mellinInv](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellininv.md) | 101 | `declaration-track:257914fe2ad328df5a6c0e3711d36b246efa1b8b5a711dc76b216caf64bace22` |
| 10 | `theorem` | [mellin_cpow_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-cpow-smul.md) | 105 | `result-track:8f4fdc16f9015010d0bac6404bea9982e4ed166504244eb4c5365874be77cf34` |
| 11 | `theorem` | [mellin_const_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-const-smul.md) | 113 | `result-track:ca5d4eca8052715e59ebc6008cf6affcc87284138038a32c8d54240a9120c5ec` |
| 12 | `theorem` | [mellin_div_const](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-div-const.md) | 118 | `result-track:151806fc975eff567ca225b26a6b7cc40a1cc286e1e18eaf2866c1950bc5e0cc` |
| 13 | `theorem` | [mellin_comp_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-comp-rpow.md) | 121 | `result-track:67bc324ea8db2f40e7a83df0292fa2fbe75fa60b8f6ba6c64ee116df9d52754a` |
| 14 | `theorem` | [mellin_comp_mul_left](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-comp-mul-left.md) | 139 | `result-track:7e8396cab590763ea9242195797eefb4161499f5e276a03bbd3f69e4c2034d75` |
| 15 | `theorem` | [mellin_comp_mul_right](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-comp-mul-right.md) | 156 | `result-track:0fb5fb53bdfffa58b66697c38fdc56ed4ce78504607dd4bf7224695e80680e25` |
| 16 | `theorem` | [mellin_comp_inv](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-comp-inv.md) | 160 | `result-track:90d096211c746b13b8803e5697b06f233abf1b9ba66b5aca3a3429e07235c273` |
| 17 | `def` | [HasMellin](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/hasmellin.md) | 166 | `declaration-track:2868c1cf636aa37f06b5cbea07ef5d9dd309d9385430c9df75065c1cb8d8e05a` |
| 18 | `theorem` | [hasMellin_add](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/hasmellin-add.md) | 169 | `result-track:42afd0cc1bd1bc626991f38b46e4a7a6fb7692afddc0ee513d3acfa66cdfc0b0` |
| 19 | `theorem` | [hasMellin_sub](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/hasmellin-sub.md) | 174 | `result-track:ffe7d31b0175b69760d6099f604ae1a95b18f7a6475a004b56398db851de0ea3` |
| 20 | `theorem` | [hasMellin_const_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/hasmellin-const-smul.md) | 179 | `result-track:0486146778e8df8d8a31c0d86262046b4f2756296689204dca49fba9a25058d6` |
| 21 | `theorem` | [mellin_convergent_iff_norm](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-convergent-iff-norm.md) | 194 | `result-track:0d1218f4ac0aa06ff125115e1de13ad11e5e5e6f19a17bd1070c9bac113c4d1a` |
| 22 | `theorem` | [mellin_convergent_top_of_isBigO](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-convergent-top-of-isbigo.md) | 208 | `result-track:b4c5804eb7d94ffeadbde1315ef880f2c5edc123ebf121dfb58170d254a74391` |
| 23 | `theorem` | [mellin_convergent_zero_of_isBigO](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-convergent-zero-of-isbigo.md) | 234 | `result-track:ae412fe5fed2f83927538a8e4378f3b705400965b013eca84d926bafef7eae7c` |
| 24 | `theorem` | [mellin_convergent_of_isBigO_scalar](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-convergent-of-isbigo-scalar.md) | 266 | `result-track:9ceb3f6a4770c5fbc2e19299fa04c42c51bf02eb02461fb8f71cccd2b035d424` |
| 25 | `theorem` | [mellinConvergent_of_isBigO_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellinconvergent-of-isbigo-rpow.md) | 284 | `result-track:f2a30a1a3f88916993f35d145013dcf48009338b6d8ab25a1298c380b87f4135` |
| 26 | `theorem` | [isBigO_rpow_top_log_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/isbigo-rpow-top-log-smul.md) | 297 | `result-track:f0e7eac58a067f7a45dee7883f0de5dd5611e71c3fd290d4eccbdf9c9dfd3380` |
| 27 | `theorem` | [isBigO_rpow_zero_log_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/isbigo-rpow-zero-log-smul.md) | 308 | `result-track:6bf05d105f3c1aef5d666d73a8d17cfe8b794d5bb9f6818c325c065346491b7a` |
| 28 | `theorem` | [mellin_hasDerivAt_of_isBigO_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-hasderivat-of-isbigo-rpow.md) | 327 | `result-track:9ca00b38b71b912010adb9cc91596a5840a38bd8aac6c1fa7566b0d46d6ad0cf` |
| 29 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-differentiableat-of-isbigo-rpow.md) | 407 | `result-track:a8556cd31723f4add14af0ae072ebcbcc8e1369dca8abb10cafb042e8e77c0ba` |
| 30 | `theorem` | [mellinConvergent_of_isBigO_rpow_exp](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellinconvergent-of-isbigo-rpow-exp.md) | 420 | `result-track:663d7fa06fdc876bff4142fc6d6d84737deb0bb4cc902b0c4e36badd1e1799d3` |
| 31 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow_exp](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/mellin-differentiableat-of-isbigo-rpow-exp.md) | 428 | `result-track:d627283ea546a28c22266b7f753a6699a0b7b7f1501c478154118ccf4b092761` |
| 32 | `theorem` | [hasMellin_one_Ioc](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/hasmellin-one-ioc.md) | 444 | `result-track:e84a1eb79aec64be07acc6c01422050bc4fdb0f749c1189ef83dcb5b1fb674d5` |
| 33 | `theorem` | [hasMellin_cpow_Ioc](../../../../FunctionalAnalysis/MellinTransformNamespacedComplex.lean/declarations/hasmellin-cpow-ioc.md) | 459 | `result-track:879c50b6473f11c89bc04c927771427fce5723e494c922fae82bf52a5e92501b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35d635f98b8c0477432ff25ae7bf636fb878384e9623305d7e7c96967f72613f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
