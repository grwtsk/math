# Verification target: Window Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee3be51a876222c3617067f2992ab85393e4e40a",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/WindowCore.lean/index.md) · [Full source](../../../../MeasureAndIntegration/WindowCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee3be51a876222c3617067f2992ab85393e4e40a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Taper` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideA.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.PiFacts` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AdmWindow](../../../../MeasureAndIntegration/WindowCore.lean/declarations/admwindow.md) | 31 | `declaration-track:adc0c2bd011ee46648d53c296c3cd55305e8ab4ba97c6beca8a487f744021cab` |
| 2 | `def` | [vHat](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vhat.md) | 53 | `declaration-track:ae3e421e55c5a289f1d556feb6d0594fb292beaa4240aba0831a05e8bb2b6ef3` |
| 3 | `def` | [vHatR](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vhatr.md) | 55 | `declaration-track:33751cea1da688e2487b2a586988e689ecafc55f802774fef83dc2243f8a3da7` |
| 4 | `def` | [VPhi](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vphi.md) | 57 | `declaration-track:8995266ff03781245274b4e2934918bda0c65d3ba4d407b658ab8c24c639f24d` |
| 5 | `def` | [VPhiR](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vphir.md) | 58 | `declaration-track:307d4fdeb7a407b3ca2cc442cd18aeb9b05a072535a8ede14f6d88d74a76379c` |
| 6 | `def` | [Av](../../../../MeasureAndIntegration/WindowCore.lean/declarations/av.md) | 60 | `declaration-track:30e27503bf375b0c7dd0a20ded6c0a256fe4435f625c508f1f1bb254f63a0a90` |
| 7 | `def` | [gv](../../../../MeasureAndIntegration/WindowCore.lean/declarations/gv.md) | 62 | `declaration-track:6b31028289b19c22ef5a0b84981c3d3e6b438b1f042571d711271f9868a13e45` |
| 8 | `def` | [av](../../../../MeasureAndIntegration/WindowCore.lean/declarations/av-source-edition-2.md) | 64 | `declaration-track:fcb810a3177c73ea9fec6da2a073cfa81c1878b4d7f1bf52664858a1acade9f1` |
| 9 | `def` | [bv](../../../../MeasureAndIntegration/WindowCore.lean/declarations/bv.md) | 65 | `declaration-track:d85090ca058269b08b016c1999f35fb2e6c720a086a8c4ef9705ab9f42091a1f` |
| 10 | `def` | [localFun](../../../../MeasureAndIntegration/WindowCore.lean/declarations/localfun.md) | 68 | `declaration-track:982889142d0a182efcc3db4ff40f5bc7b0424a0414ac6e38603a7a7996fbdf2c` |
| 11 | `lemma` | [w_pos](../../../../MeasureAndIntegration/WindowCore.lean/declarations/w-pos.md) | 80 | `result-track:312446896972083919ac3ff765f158559f2018f5ba059334e408af27645a2a3a` |
| 12 | `lemma` | [L_pos](../../../../MeasureAndIntegration/WindowCore.lean/declarations/l-pos.md) | 81 | `result-track:76d4bfebedaadd6988b4f5002676341ff3752b38b8452dad3244d4249c4c98a6` |
| 13 | `lemma` | [two_w_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/two-w-le.md) | 82 | `result-track:5a2c25e8959686a8577341e6dda65e6ee82adebbb6be3171e6c0584f7b615958` |
| 14 | `lemma` | [c_nonneg](../../../../MeasureAndIntegration/WindowCore.lean/declarations/c-nonneg.md) | 83 | `result-track:dd1f6a0149379911a403b3441323c54daffe19c684d57b4321e965aa40df370b` |
| 15 | `lemma` | [continuous](../../../../MeasureAndIntegration/WindowCore.lean/declarations/continuous.md) | 85 | `result-track:031214a3930a830926109d1f12cf973d9c6d801b354bc4ad80772e2242513376` |
| 16 | `lemma` | [eq_zero_of_not_mem](../../../../MeasureAndIntegration/WindowCore.lean/declarations/eq-zero-of-not-mem.md) | 87 | `result-track:e6a101655f684257717afc14cdfa2cd09d62e5c92995df51d4179d9f044b34b4` |
| 17 | `lemma` | [hasCompactSupport](../../../../MeasureAndIntegration/WindowCore.lean/declarations/hascompactsupport.md) | 94 | `result-track:6df9351bc979d29782b3e433e62f161693a6c5730f5509ece88ac50dc8ccbc1b` |
| 18 | `lemma` | [support_subset](../../../../MeasureAndIntegration/WindowCore.lean/declarations/support-subset.md) | 97 | `result-track:95b29e4b9f115ffb1baf240b34aaa40eec1c1c4af7a08444c6deba69c4f6f31b` |
| 19 | `lemma` | [integrable](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integrable.md) | 101 | `result-track:7d1cd6bcf355ca7f71bb8b54928c9792b24182728e8a30b113937d39ced6af44` |
| 20 | `lemma` | [sq_even](../../../../MeasureAndIntegration/WindowCore.lean/declarations/sq-even.md) | 103 | `result-track:026f05aa8dcd7b2324c85fa607eee1830d03fd57951866cfd5af72dc41cab54b` |
| 21 | `lemma` | [sq_eq_zero](../../../../MeasureAndIntegration/WindowCore.lean/declarations/sq-eq-zero.md) | 105 | `result-track:2c87d18266063c09cd417f76039c583f8af80c7530841cb1e2551e17889f2635` |
| 22 | `lemma` | [sq_hasCompactSupport](../../../../MeasureAndIntegration/WindowCore.lean/declarations/sq-hascompactsupport.md) | 108 | `result-track:93bce189ae1dae8ab533452ad85d16ef90cd32af6b70f25cb81130400596c707` |
| 23 | `lemma` | [sq_continuous](../../../../MeasureAndIntegration/WindowCore.lean/declarations/sq-continuous.md) | 111 | `result-track:e2ba9827759612c8333746bdace96352b4ad6225006ce8e5ceb228dc855f8f66` |
| 24 | `lemma` | [integrable_pow](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integrable-pow.md) | 113 | `result-track:090881db904558c715f1084b61882d2d28158cea48cf3c1682827d8832cd5bde` |
| 25 | `lemma` | [vC_continuous](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vc-continuous.md) | 119 | `result-track:5ea08143144367ea0652d7c0eaddafb153343b1d2f793f5cde92fca61f314b04` |
| 26 | `lemma` | [vC_hasCompactSupport](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vc-hascompactsupport.md) | 121 | `result-track:ab95fbbcaa10943370b8d799190326cf0485392cc5b1c85045bc14adbe8f4af2` |
| 27 | `lemma` | [vC_contDiff](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vc-contdiff.md) | 124 | `result-track:07647f00e452c8942e4dcd2f01ace35951580b20142f726784885aadba5ca570` |
| 28 | `lemma` | [vC_supp](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vc-supp.md) | 128 | `result-track:93011f240c53e961e8128e7421dd197c80f694dbe971381265baed3d6b60932a` |
| 29 | `lemma` | [vSqC_continuous](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vsqc-continuous.md) | 133 | `result-track:1202ce6277d6fffb994bfcbbdbfd75b7686625cdfe9829e2437afc09094f628f` |
| 30 | `lemma` | [vSqC_hasCompactSupport](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vsqc-hascompactsupport.md) | 136 | `result-track:c2b6d9bfab136816bc464e271a11975d0fee943748ce203580109bbd0bcdbede` |
| 31 | `lemma` | [vSqC_contDiff](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vsqc-contdiff.md) | 139 | `result-track:b7df53dcb4cb0126dc73f580284745dc7183c1dbccf67ddf49494aadff289281` |
| 32 | `lemma` | [vSqC_supp](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vsqc-supp.md) | 143 | `result-track:bd982626f1a2069e0935894dbca954337b934814883b13a7ff265adc6b60a47f` |
| 33 | `lemma` | [integral_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integral-le.md) | 153 | `result-track:3b2e6295e649f5eea739b7f946945b1b3cf461593cd07c9f586c61cfcee0b638` |
| 34 | `lemma` | [sq_le_self](../../../../MeasureAndIntegration/WindowCore.lean/declarations/sq-le-self.md) | 168 | `result-track:7a38e5d86937679b18ec290366196f5fbadb152363f8a69b3211a4023b3d281b` |
| 35 | `lemma` | [integral_sq_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integral-sq-le.md) | 171 | `result-track:5d95d8236f36317acca76e004d626c1ae8d18fad75d519fce1bbf5756298090c` |
| 36 | `lemma` | [norm_vHat_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/norm-vhat-le.md) | 182 | `result-track:8cf7edad538e43e6871965f68998e207779978d6a780a77088f55db644640859` |
| 37 | `lemma` | [norm_vHat_mul_sq_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/norm-vhat-mul-sq-le.md) | 192 | `result-track:085ceeff530ec6937d060059f63b4d4121e2141075b5ab64da380cfb987f8a55` |
| 38 | `lemma` | [abs_vHatR_le_norm](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vhatr-le-norm.md) | 202 | `result-track:7384c137ff65924e831fcf02e61090f219d5c261180976f9fda4c8bec42b9324` |
| 39 | `lemma` | [abs_VPhiR_le_norm](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vphir-le-norm.md) | 204 | `result-track:6eb3df14aa21da7ddf852adbdee2b2a8a9720a6d1890ffff2a99aa3669c0530c` |
| 40 | `lemma` | [abs_vHatR_le_L](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vhatr-le-l.md) | 206 | `result-track:40e20decc8e91e9e5b5a2f1e9a09250ed4b3e378d1debd8a24295715ddf2c53c` |
| 41 | `lemma` | [abs_vHatR_mul_abs_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vhatr-mul-abs-le.md) | 210 | `result-track:fc9fe9dcff2887b8bc6efe39e749d2b57086ee3896d31d57be261eb87136892d` |
| 42 | `lemma` | [abs_vHatR_mul_sq_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vhatr-mul-sq-le.md) | 220 | `result-track:1459fb1d0984f53b59af8fdc3ef04f0d64e923ab7b805f91f5ae229c4e61141b` |
| 43 | `lemma` | [abs_VPhiR_le_L](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vphir-le-l.md) | 229 | `result-track:b57f7525733e8795e1a2555ed5a5979b2b29f04dfbf695c986b28948fb282846` |
| 44 | `lemma` | [abs_VPhiR_mul_abs_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vphir-mul-abs-le.md) | 240 | `result-track:2a6b3b7bb98d7c52e8638c83f9e3ab9e0d503c03b6cfd6484829ffc94b036b2e` |
| 45 | `lemma` | [abs_VPhiR_mul_sq_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vphir-mul-sq-le.md) | 251 | `result-track:859d4e71ab41660e6d94300c11d6a5f183a222c48ab9e811f167601438717b8f` |
| 46 | `lemma` | [abs_vHatR_le_psiA](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vhatr-le-psia.md) | 265 | `result-track:0d8aa6d128a81ceae1e058b1d8d6ef1528085b52ef80195c51b822c2e12235d3` |
| 47 | `lemma` | [abs_VPhiR_le_psiA](../../../../MeasureAndIntegration/WindowCore.lean/declarations/abs-vphir-le-psia.md) | 278 | `result-track:bc0f092fb144c19903b2acd7476e45e93504330ced509aa0b42af88de08e649d` |
| 48 | `lemma` | [vHat_ofReal](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vhat-ofreal-source-edition-2.md) | 300 | `result-track:a78e1e99d30fb5092fc6bc2f6f9dcf46fbf2f1a82f011c3f327423ee4521ee39` |
| 49 | `lemma` | [vHat_ofReal'](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vhat-ofreal.md) | 303 | `result-track:056751bc2205e396139490b82f7c1cc39b29e7678b8aec4441c931d71f1e2005` |
| 50 | `lemma` | [VPhi_ofReal](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vphi-ofreal.md) | 305 | `result-track:0045d2959c3bbcd3b7e833c400cdb5f1d458274628f0453b922af04c3c66bc14` |
| 51 | `lemma` | [vHatR_even](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vhatr-even.md) | 308 | `result-track:1327479ef6a3ef15bc79b686b6429940dc7ad0d734a276d5804babdfd49ad692` |
| 52 | `lemma` | [VPhiR_even](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vphir-even.md) | 311 | `result-track:5fd368607398e7c19bb9366d6037f58dd560a8df84bab7a522cf270c0713012e` |
| 53 | `lemma` | [vHatR_continuous](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vhatr-continuous.md) | 315 | `result-track:c0cd3a5d9044801b7f5a38a6a222cc44d8792be698761d12c3ad6a09e0015403` |
| 54 | `lemma` | [VPhiR_continuous](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vphir-continuous.md) | 318 | `result-track:71ee2af60b6878ff9aaab4cd9bad06f7a3aa6f16e90bf157c9ca5a8a09b98388` |
| 55 | `lemma` | [VPhiR_contDiff_one](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vphir-contdiff-one.md) | 321 | `result-track:82539eaa24e85af0e97edbd199082625b9714b8e6b4345aa491d7d7eb652c101` |
| 56 | `lemma` | [VPhiR_zero](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vphir-zero.md) | 324 | `result-track:5e6a026e09ef24513d98688e72606daab322a9ba414c4b0aa551756ba0382393` |
| 57 | `lemma` | [gv_zero](../../../../MeasureAndIntegration/WindowCore.lean/declarations/gv-zero.md) | 329 | `result-track:2b7edf06ab330e044c619f7059436a4cd97a4997114933e1f0afe501c88856a1` |
| 58 | `lemma` | [Av_zero](../../../../MeasureAndIntegration/WindowCore.lean/declarations/av-zero.md) | 334 | `result-track:37f763be68eaf94dcadbdf7c0b943e80cc7a2e00533847b026299d76a0e537dc` |
| 59 | `lemma` | [vHatR_sq_eq](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vhatr-sq-eq.md) | 340 | `result-track:dd6315dc4473d4dd0882917f97da76bdc3c549a92cf08dde24fa68e808bf31cf` |
| 60 | `lemma` | [VPhiR_sq_eq](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vphir-sq-eq.md) | 347 | `result-track:5eecc810f53f6c2e5b14bb88a1a7728c69f3c26e3117d26c4841cd135c5920e6` |
| 61 | `lemma` | [integrable_vHatR_sq](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integrable-vhatr-sq.md) | 355 | `result-track:807e356239c4141a3e87dd30ce4f6ab37e4e249483fb515c77fb880ab1933fe8` |
| 62 | `lemma` | [integrable_vHatR_sq_mul_abs](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integrable-vhatr-sq-mul-abs.md) | 358 | `result-track:8f89e972e58890e7726dbb2944f21399114f579abb083e77a0884d2fb3f4a452` |
| 63 | `lemma` | [integrable_VPhiR_sq](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integrable-vphir-sq.md) | 361 | `result-track:da7d4f95ef1c18b74e23526669721a039dd18d2c369f9c6a8e2d9e210da77644` |
| 64 | `lemma` | [integrable_VPhiR_sq_mul_abs](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integrable-vphir-sq-mul-abs.md) | 364 | `result-track:daf0fa5014ed47a7974548643349619c47c434b7422c61c84c1da3367288eabf` |
| 65 | `lemma` | [Av_even](../../../../MeasureAndIntegration/WindowCore.lean/declarations/av-even.md) | 370 | `result-track:ff439e926c5d8150d0992d89e1712b92412e011f57f79ecbaeed4f0cfe531317` |
| 66 | `lemma` | [gv_even](../../../../MeasureAndIntegration/WindowCore.lean/declarations/gv-even.md) | 372 | `result-track:7f134580f3bab70496e315d01adec729337d3697d88888f2b7934878d7550ea1` |
| 67 | `lemma` | [integrable_mul_shift](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integrable-mul-shift.md) | 374 | `result-track:31c00e6cfb6611d22cfbb1e976d284ec6e1559e8f0d12ebd8d2b1277c27099e7` |
| 68 | `lemma` | [integrable_sq_mul_shift](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integrable-sq-mul-shift.md) | 380 | `result-track:e7457ed90afc54639b418cfb8ead8d7068af19a80c5545686a21635b8d9fa18d` |
| 69 | `lemma` | [gv_nonneg](../../../../MeasureAndIntegration/WindowCore.lean/declarations/gv-nonneg.md) | 387 | `result-track:5bb70edd61431f73484a6bafaf1e63e71d69a85221fd125f46b060dfcb6d1527` |
| 70 | `lemma` | [gv_le_Av](../../../../MeasureAndIntegration/WindowCore.lean/declarations/gv-le-av.md) | 390 | `result-track:6b3029d8ea35c216a4d3eb303c57987490221d240384ebd3703ce8b12eba6d08` |
| 71 | `lemma` | [Av_le](../../../../MeasureAndIntegration/WindowCore.lean/declarations/av-le.md) | 396 | `result-track:12f617af22428cf86565b781291ed182e46a36632cf08c92e92c35eaa068cd19` |
| 72 | `lemma` | [Av_nonneg](../../../../MeasureAndIntegration/WindowCore.lean/declarations/av-nonneg.md) | 401 | `result-track:f3a0f514a2b2d70728c11a8ef42ddf5b89e2631eacf51b4886834f4064ba244b` |
| 73 | `lemma` | [gv_eq_zero](../../../../MeasureAndIntegration/WindowCore.lean/declarations/gv-eq-zero.md) | 403 | `result-track:2bde9c4e7b9381f71777776e41486c1cabf72a3d908b7dff9c36426e1eea416c` |
| 74 | `lemma` | [Av_eq_zero](../../../../MeasureAndIntegration/WindowCore.lean/declarations/av-eq-zero.md) | 406 | `result-track:8d05f753eee9927bc0db73e4449e2a999e6ad4d10c9434914e4cfc03b21d5c93` |
| 75 | `lemma` | [gv_continuous](../../../../MeasureAndIntegration/WindowCore.lean/declarations/gv-continuous.md) | 409 | `result-track:3a6f767408c0c3a7ba439251bc76fb3d6f3d93068106475dfcdae5a2b5adcbe9` |
| 76 | `lemma` | [Av_continuous](../../../../MeasureAndIntegration/WindowCore.lean/declarations/av-continuous.md) | 412 | `result-track:97546ff636d6d284bf12af0cd5b0fcc4896c28407b97c0989f95d09f0cd96e7f` |
| 77 | `lemma` | [integral_vHatR_sq_mul_cos](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integral-vhatr-sq-mul-cos.md) | 417 | `result-track:21084e0304e8ec05a0593f008aee15bbfe5c589f0a87c9ab46da086cc0c602c7` |
| 78 | `lemma` | [integral_VPhiR_sq_mul_cos](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integral-vphir-sq-mul-cos.md) | 425 | `result-track:30e90dd3940b5c5de54052aab06ece305c25b7a4b3c313a7a8c4a386f6f1f13e` |
| 79 | `lemma` | [integral_vHatR_sq](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integral-vhatr-sq.md) | 433 | `result-track:e4ca59a1c84150fa414a62c59e58859c6130cadd5f1a9f4cc7e18afb95d44a1d` |
| 80 | `lemma` | [integral_VPhiR_sq](../../../../MeasureAndIntegration/WindowCore.lean/declarations/integral-vphir-sq.md) | 439 | `result-track:3c6e52953b0691406be0a3e6d8f218a4d0ba9fd16f1df91dbc58ae5399ec8d7d` |
| 81 | `lemma` | [vHat_decay](../../../../MeasureAndIntegration/WindowCore.lean/declarations/vhat-decay.md) | 453 | `result-track:c33205b1ed89c09582c2aeb4b19c665906d23be06d0c23933553fbedcf3c7653` |
| 82 | `theorem` | [hasSum_vHatR_mul](../../../../MeasureAndIntegration/WindowCore.lean/declarations/hassum-vhatr-mul.md) | 463 | `result-track:dbc6ee9f60432d1a537faa254c270e154123208f1a24b6596a1006260753f5d5` |
| 83 | `lemma` | [bv_le_av](../../../../MeasureAndIntegration/WindowCore.lean/declarations/bv-le-av.md) | 486 | `result-track:00ba166e297330e42a13ea122f01013978d4198b5792b7e1fff7e02f26f9bf78` |
| 84 | `lemma` | [av_le_one](../../../../MeasureAndIntegration/WindowCore.lean/declarations/av-le-one.md) | 495 | `result-track:e01feb8ab1a7ad86d507ba0c4c5dcb9e1b2d25e17f0f7e4a4927613d662d8da5` |
| 85 | `lemma` | [bv_nonneg](../../../../MeasureAndIntegration/WindowCore.lean/declarations/bv-nonneg.md) | 501 | `result-track:719e7e61a3d4ab154ade4962f508c3f02a1e0c7c9fba2ae1861bc830b54a1467` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4316434587079dab76b77af44b9723a485952388e79b95bac6bce7de4746aafe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
