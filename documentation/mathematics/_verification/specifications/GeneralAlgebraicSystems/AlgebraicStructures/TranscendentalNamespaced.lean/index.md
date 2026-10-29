# Verification target: Transcendental Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "169edbfcc39677131ff0f1c11bc6349f9be14724",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `169edbfcc39677131ff0f1c11bc6349f9be14724`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalRat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofRealEndpoints](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/ofrealendpoints.md) | 56 | `declaration-track:491089258e9eb664546b3b25ad14e6f302b8247d6d2b2b586bffccb373b095fc` |
| 2 | `theorem` | [mem_ofRealEndpoints](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/mem-ofrealendpoints.md) | 66 | `result-track:2708142744b6bd7d5e3895b8b1f0b578a165189450425a48ccdd88f9615101fd` |
| 3 | `def` | [expInterval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/expinterval.md) | 80 | `declaration-track:94adc1b6b4eaf703e43df39e428656d2c5a58301c48b8389cd40343dbe05f9bc` |
| 4 | `theorem` | [mem_expInterval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/mem-expinterval.md) | 85 | `result-track:eec6be6b0d34a6e7f041731ac68f12c10a6e4da6e3c32184af8d86ce60ac2815` |
| 5 | `def` | [isPositive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/ispositive.md) | 97 | `declaration-track:36577a9ac35662dc508dba3c61cd3699dc74d9cad913aab4bac46197eb6ddc34` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/instance.md) | 100 | `declaration-track:7f4210bf5c2cf353976e9b49bc7092321dbd27ad3c087e9a0c04e94252e779ed` |
| 7 | `structure` | [IntervalRatPos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/intervalratpos.md) | 104 | `declaration-track:5f89b4066446f6ca64e5c08a72231feb7cc5052d564895fbda7322740540d699` |
| 8 | `def` | [logInterval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/loginterval.md) | 112 | `declaration-track:20c9b3febe3e93b8a998d5e77073a8c14495179996f36b853952f9363717c305` |
| 9 | `theorem` | [mem_logInterval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/mem-loginterval.md) | 117 | `result-track:517ff816f715f48124a59d0506fa7c7b91ebbf7980d1ca770f4c0e35533cc7ab` |
| 10 | `structure` | [IntervalRatInUnitBall](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/intervalratinunitball.md) | 131 | `declaration-track:b7b18258b3d09fc46d54b7b9ec14c87d17dd77539963b05e122f3d127b2e25b5` |
| 11 | `def` | [IntervalRatInUnitBall.toIntervalRat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/intervalratinunitball-tointervalrat.md) | 139 | `declaration-track:1108f4bc49e25cc3187997389059855c05531e089ef5e06c82a055b37aaeed1c` |
| 12 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/instance-source-edition-2.md) | 143 | `declaration-track:e1899c895bc6e3612b7d0007e0f4a98b5b9e4a34cfc4d463f9fde901b6500d4e` |
| 13 | `theorem` | [IntervalRatInUnitBall.mem_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/intervalratinunitball-mem-def.md) | 146 | `result-track:c30299598cbbb366d22bfc61eada445c3ae969913f11c5a2940c6cce64cd4f50` |
| 14 | `def` | [atanhIntervalComputed](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/atanhintervalcomputed.md) | 151 | `declaration-track:fbac277c3620ee7997cc0847d10f10b1f20c68c6f189f0a32895b0040d070a32` |
| 15 | `theorem` | [mem_atanhIntervalComputed](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/mem-atanhintervalcomputed.md) | 162 | `result-track:570f3dfa17c30fb271a06eca13fd5d4aff622f59234e6dd9f07874e3242cb25d` |
| 16 | `def` | [intSqrtNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/intsqrtnat.md) | 182 | `declaration-track:4bd0bca15da199c614ceae6a63d763d5355de96da76f1e191abac86fbe562b2e` |
| 17 | `theorem` | [nat_sqrt_sq_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/nat-sqrt-sq-le.md) | 185 | `result-track:0f61f2fc522fc61a89bb19ee4650c786a8ffadf8e63cffe20e1ab8b6dbf33fee` |
| 18 | `theorem` | [nat_lt_succ_sqrt_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/nat-lt-succ-sqrt-sq.md) | 188 | `result-track:55fd938bcbe7d667d765aaef3672ac9ad700a33cb5ae72cf2db2fd931ae46326` |
| 19 | `def` | [sqrtRatLower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtratlower.md) | 199 | `declaration-track:75d3361c57540db85539e272774767119c3f11b4c05310f69e926dfbfa9b82e8` |
| 20 | `def` | [sqrtRatUpper](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtratupper.md) | 211 | `declaration-track:1d67a454b0751187c0266a54afedeab1319ddd6d4b73b231317c9f79bfae8bd1` |
| 21 | `def` | [sqrtScaleBits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtscalebits.md) | 223 | `declaration-track:20ba76368ea8ad490e120f60ea9254108e188f8c460e532deafdc6ef92b413fe` |
| 22 | `def` | [sqrtRatLowerPrec](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtratlowerprec.md) | 228 | `declaration-track:32ca3fd10fb4e66ae6c886e9381c87aa0fac7e9e32daf61e8b300431a7d6acf2` |
| 23 | `def` | [sqrtRatUpperPrec](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtratupperprec.md) | 243 | `declaration-track:4de500b5ad05bf35620c0fd69adcade28f2952ad9930fa473379f394e3e3c04a` |
| 24 | `theorem` | [rat_num_of_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/rat-num-of-nonneg.md) | 256 | `result-track:1e1fb50d0eb5d7ad289b4fb9f9bdd6259465cfcf5f5cca320830aa1975888dfd` |
| 25 | `theorem` | [rat_num_natAbs_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/rat-num-natabs-pos.md) | 260 | `result-track:ef4574e69e8f66313c6a72b9dea37f53385c5d290a2ce0fff6c663db4407f86c` |
| 26 | `theorem` | [sqrtRatLower_le_sqrt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtratlower-le-sqrt.md) | 265 | `result-track:dceb4bb95b8443449f291d1d1f4231bd8101af73d3448893fc9d34b72e74858c` |
| 27 | `theorem` | [sqrt_le_sqrtRatUpper](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrt-le-sqrtratupper.md) | 309 | `result-track:1b63dbd191f68a673208ddc9cea56d12c2b19c65e5857d4f4c0453e73c394532` |
| 28 | `def` | [sqrtInterval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtinterval.md) | 382 | `declaration-track:4ae6b591942de240919a077c01635743054e0c19821efa8f6fa40bf2f7809af3` |
| 29 | `def` | [sqrtIntervalTight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtintervaltight.md) | 391 | `declaration-track:4d2fe50e21fd2546c28a9ec9b8b767568edfd743cefb49e62c65b74f470fc09e` |
| 30 | `theorem` | [sqrtRatLowerPrec_le_sqrt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtratlowerprec-le-sqrt.md) | 408 | `result-track:9473c49185bb701f264cbb7cac443ae794b17bc8909af98cd3ae008e20e19e91` |
| 31 | `theorem` | [sqrt_le_sqrtRatUpperPrec](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrt-le-sqrtratupperprec.md) | 478 | `result-track:1354af0d6a3e115ea0004892146692142ee3727b9a721ff1f34de0a00c2dfffc` |
| 32 | `def` | [sqrtIntervalTightPrec](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrtintervaltightprec.md) | 570 | `declaration-track:8b31efa27324ccde0b60d66dd37486fd53f9718fa3eed8304af86484bb3f3724` |
| 33 | `theorem` | [mem_sqrtIntervalTightPrec'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/mem-sqrtintervaltightprec.md) | 587 | `result-track:d44f6209253265cfc18ad9b66c68da799a06d4dad8afaaf0db01d4a0f85b02cb` |
| 34 | `theorem` | [sqrt_le_max_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrt-le-max-one.md) | 617 | `result-track:6ac4cfdee386182664141f31669aeaff12cf8a989116f72a9b7efa4e7fd56dae` |
| 35 | `theorem` | [mem_sqrtInterval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/mem-sqrtinterval-source-edition-2.md) | 639 | `result-track:adf1cb4307573c648fbb437b1d3236f9ff2f5b9b1fff3d6860c1b5c17c353a19` |
| 36 | `theorem` | [mem_sqrtInterval'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/mem-sqrtinterval.md) | 649 | `result-track:19607c3798d70a0072c55fd4915e65dc930160689eecbcd514b6d9fc54085296` |
| 37 | `theorem` | [sqrt_le_sqrtRatUpper_max](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/sqrt-le-sqrtratupper-max.md) | 664 | `result-track:1d7fd7ad95e991d9b43773a29aa1dcd63cb398b0edf7c40fd7c06cc94e9d0078` |
| 38 | `theorem` | [mem_sqrtIntervalTight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/mem-sqrtintervaltight.md) | 678 | `result-track:0badcbf505cca7c85e4facae2b829fb573a4ff62a6fd32e9481dc3b41711a691` |
| 39 | `theorem` | [mem_sqrtIntervalTight'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TranscendentalNamespaced.lean/declarations/mem-sqrtintervaltight-source-edition-2.md) | 699 | `result-track:5b647e8b082bf227e953ade5940178f9825c4825221bc21dd9d324fc6933dc1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0db71cff64955b039608c6463a3c70d452848744ffb40336e057cd761ec4ba2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
