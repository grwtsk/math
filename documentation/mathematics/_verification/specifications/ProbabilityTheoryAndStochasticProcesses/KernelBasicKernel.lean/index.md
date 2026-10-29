# Verification target: Kernel Basic Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28f9ee4002795ae62a048574c561692e42872ccf",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28f9ee4002795ae62a048574c561692e42872ccf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Prod.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/kernel.md) | 60 | `declaration-track:3953f4c371529ea6d9e5aa43fe062be7ed39fb9791e17ca6b6c226807c00a310` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/instance.md) | 68 | `declaration-track:15b9b9dd37c5bdf8b54c22dfeef047372c478fc1a60af947cd59296a19ee43c0` |
| 3 | `theorem` | [coeFn_zero](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/coefn-zero.md) | 78 | `result-track:a42d462c7b13dc13697b66cd34ad4a48cc110fde855d63274d8c962db99ce3ce` |
| 4 | `theorem` | [coeFn_add](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/coefn-add.md) | 83 | `result-track:0109674f2c5a8de3a8bce67c78e4e0f07b1cc5bbc3341c794cf88664db2b1d38` |
| 5 | `def` | [coeAddHom](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/coeaddhom.md) | 88 | `declaration-track:4cddba266121386d9efd33ac35ca172a238c0508c12aa115ba4f1f6e0bb7aff9` |
| 6 | `theorem` | [zero_apply](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/zero-apply.md) | 94 | `result-track:9a1054b0edefa48f2936205f18ab1ab8c220dcfc13eaa0cf55fe87706b0ac0f6` |
| 7 | `theorem` | [coe_finset_sum](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/coe-finset-sum.md) | 99 | `result-track:731b1d144cfc3dcc652bb9dd829e570d8a4a96b17c3b3d17bd1ebf80df6a5c29` |
| 8 | `theorem` | [finset_sum_apply](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/finset-sum-apply.md) | 103 | `result-track:f68ec238f1a29d2d356fa586c66cd9487673f022d87678dedb5f1db12404b4ba` |
| 9 | `theorem` | [finset_sum_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/finset-sum-apply-source-edition-2.md) | 107 | `result-track:f9bfd6f3893a4bb5e165fc96be3a4f124cc708f2b337ce3c929f626b98591d54` |
| 10 | `class` | [IsMarkovKernel](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ismarkovkernel.md) | 114 | `declaration-track:ce14e1f1ebde9186ce298f2082afd740cc45090a21143eba00b9404fa8830890` |
| 11 | `class` | [IsFiniteKernel](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel.md) | 119 | `declaration-track:e21e1ef1270f8adec63895cb99442c220d52c76c728956b106c8d24fae8a1413` |
| 12 | `def` | [IsFiniteKernel.bound](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-bound.md) | 128 | `declaration-track:533857bdd79a73f799d8c5118d1a038ae503d5e218bf192d93864466ae59c392` |
| 13 | `theorem` | [IsFiniteKernel.bound_lt_top](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-bound-lt-top.md) | 132 | `result-track:c9156eded8f4f308819b7565110e1c2669e2fa54f57ef55a75559405a6f9eadf` |
| 14 | `theorem` | [IsFiniteKernel.bound_ne_top](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-bound-ne-top.md) | 137 | `result-track:f3a4ec87c26b907c48e780ad130be458022a0feb2866e041b28d699499068eff` |
| 15 | `theorem` | [kernel.measure_le_bound](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/kernel-measure-le-bound.md) | 142 | `result-track:d6d86f007c578aeae73b03da1bd91db67d1366d653fc926b546afb7cc52249a3` |
| 16 | `instance` | [isFiniteKernel_zero](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-zero.md) | 147 | `declaration-track:a124bb2d09fcb53738799e28417420d1d7ba6b715ef832ed8746d85a0da765fa` |
| 17 | `instance` | [IsFiniteKernel.add](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-add.md) | 153 | `declaration-track:005a834d0d19bc4f42a6a57cc01cde9f2682a3d1952373f794d0e4ffcc24624a` |
| 18 | `instance` | [IsMarkovKernel.is_probability_measure'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ismarkovkernel-is-probability-measure.md) | 163 | `declaration-track:3da4518d3097daa57d981f0a95d8461e67c66c92910f49862ec4fdef9f2b30cb` |
| 19 | `instance` | [IsFiniteKernel.isFiniteMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-isfinitemeasure.md) | 168 | `declaration-track:996f91f324deb6b8a5938e6403b0e1769a4429c31015d563c79ce56a1e4b5aa6` |
| 20 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/instance-source-edition-2.md) | 172 | `declaration-track:57838dfd725839b88ec699244ea98158ec7118f52e9ac0904cd6af7c1da843e5` |
| 21 | `theorem` | [ext](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ext.md) | 180 | `result-track:e4e4449135dab727554dd262a74c2a6648b2ca3174405aaba7d86d6343a4aa6e` |
| 22 | `theorem` | [ext_iff](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ext-iff-source-edition-2.md) | 183 | `result-track:5d6f411268ed0ba30827e80c7db5c476d6ea2b88bdef2245c964ad042094c02c` |
| 23 | `theorem` | [ext_iff'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ext-iff.md) | 186 | `result-track:0f7e21a6599cd136fba39c639d8d942b8448941cca514e7a116c0df8fae7db09` |
| 24 | `theorem` | [ext_fun](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ext-fun.md) | 191 | `result-track:a374029d2380d4fa1ce605905d3e4f16e1956557e122b37e6b3ad596ee1e94d1` |
| 25 | `theorem` | [ext_fun_iff](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ext-fun-iff.md) | 199 | `result-track:d3b44eeba210ab7de15da0122e15d4d081a01b1ecf99ff791030a0ae4ac6d368` |
| 26 | `theorem` | [measurable](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/measurable.md) | 204 | `result-track:6d4ccf9d6339cf15ce808469d4a81db27b3c92be5786b6e5c0dc236e8a751816` |
| 27 | `theorem` | [measurable_coe](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/measurable-coe.md) | 208 | `result-track:3ee13a0b2443743553f7bf556f2f54f02b7e09ded987f63c04bdfe4e03dedd11` |
| 28 | `lemma` | [IsFiniteKernel.integrable](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-integrable.md) | 213 | `result-track:db6e0e215b02e9365c76ee6c81bb92267e32c0784df67ff1b2ec7087ec7d47f0` |
| 29 | `lemma` | [IsMarkovKernel.integrable](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ismarkovkernel-integrable.md) | 223 | `result-track:8f91e9bb653bfe3fdab36fc6dc93317c188c76b329cf5200a3910fb33d8ddb7a` |
| 30 | `def` | [sum](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/sum.md) | 231 | `declaration-track:11bf5106913bd8c851199e2bded81ec5f6b3c4f8690555689435943a5fafc462` |
| 31 | `theorem` | [sum_apply](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/sum-apply-source-edition-2.md) | 239 | `result-track:f819cad6f530caec1b1d55487e03c0c72f7c8033b5b40387eec43451cbda54de` |
| 32 | `theorem` | [sum_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/sum-apply.md) | 244 | `result-track:0e459a8ac1552ff73e741eced75cbdb78ededc86fa3da80fb048c84d38e46e11` |
| 33 | `theorem` | [sum_zero](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/sum-zero.md) | 249 | `result-track:8dc91e19fcd9a0a09ff9c504efbee15221fc265650dc66f09964a3ed5061790a` |
| 34 | `theorem` | [sum_comm](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/sum-comm.md) | 255 | `result-track:778799adcb0e1818c89f4c46525008c7bcaef9a5c6ed2e67110847353c8f8f92` |
| 35 | `theorem` | [sum_fintype](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/sum-fintype.md) | 261 | `result-track:25a7db356b8cedcfa2b34fa5eeeda035ef4d3a0b4933ef105f8e119cc7940473` |
| 36 | `theorem` | [sum_add](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/sum-add.md) | 266 | `result-track:b40712a1c696a1c1a27e339c17b527b2f1a3a97779ff7ff30bc3f23bdabda829` |
| 37 | `class` | [_root_.ProbabilityTheory.IsSFiniteKernel](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/root-probabilitytheory-issfinitekernel.md) | 278 | `declaration-track:ffe4787f5e024448c33808b9542ebb0bb02c55256bcc69a961bf673a6e2850e6` |
| 38 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/instance-source-edition-3.md) | 282 | `declaration-track:b0a5499ee3da6cb024271adba59e7990d95ec11096d004b72e726e88e6d30397` |
| 39 | `def` | [seq](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/seq.md) | 294 | `declaration-track:846a58d7488a02b8db64b79a10e8068b92589afdc99d72dbbce250db9bed283b` |
| 40 | `theorem` | [kernel_sum_seq](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/kernel-sum-seq.md) | 298 | `result-track:78862b478a6c253aadab6adfd3468cbd6a154974559d6bd4fe7e89487b98689a` |
| 41 | `theorem` | [measure_sum_seq](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/measure-sum-seq.md) | 302 | `result-track:f510115989d1b878a63f086478e4b3b215ed1bb32aea1f374b9addbc8c89967a` |
| 42 | `instance` | [isFiniteKernel_seq](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-seq.md) | 306 | `declaration-track:e5e81dd1a4f9e9877c5185767500005d39eba5d8c726101a4f289e9c70f55faa` |
| 43 | `instance` | [IsSFiniteKernel.add](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/issfinitekernel-add.md) | 311 | `declaration-track:c6061575876f0e8903c23a8b6dcce8bfd71fce758d57bef4a3fd5d60ff1bac98` |
| 44 | `theorem` | [IsSFiniteKernel.finset_sum](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/issfinitekernel-finset-sum.md) | 317 | `result-track:cbeade77abd6aac75c68e4bf14318d4116c4f0fd3ec15cc451e3883ca682c645` |
| 45 | `theorem` | [isSFiniteKernel_sum_of_denumerable](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/issfinitekernel-sum-of-denumerable.md) | 329 | `result-track:c377e6f3fda57d5f14caec40fdec687d7e038987eee91b55c498f4a9f6f36f43` |
| 46 | `theorem` | [isSFiniteKernel_sum](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/issfinitekernel-sum.md) | 343 | `result-track:2784d460adf03a2ef2c6da4abcc5daddc17bc2992b002974275512298e31aa22` |
| 47 | `def` | [deterministic](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/deterministic.md) | 357 | `declaration-track:99c9c4860c8207f4c7898d1855d7e28de1808bf9bfc490bad03767f28fb2d051` |
| 48 | `theorem` | [deterministic_apply](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/deterministic-apply-source-edition-2.md) | 365 | `result-track:bcdc87693941dedd570cd2ece26d7d67206e8807130455effd08b5ac62a1966f` |
| 49 | `theorem` | [deterministic_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/deterministic-apply.md) | 370 | `result-track:009ab1281c6be032ba02310a5c47ed3651ce885fe37b450a34d95d8acae8284b` |
| 50 | `instance` | [isMarkovKernel_deterministic](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ismarkovkernel-deterministic.md) | 377 | `declaration-track:0d85afedfbfdb9584ff68bb92508f1eb4907e7216d148b20987519ff40db4759` |
| 51 | `theorem` | [lintegral_deterministic'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/lintegral-deterministic-source-edition-2.md) | 382 | `result-track:9996cc8dd6bddfa915bbc2702e2d5d265802e77f89176e9f867eb5ae43dee65a` |
| 52 | `theorem` | [lintegral_deterministic](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/lintegral-deterministic.md) | 388 | `result-track:165fbd3b02d44607244bb1c3e6629f39b16d827ced594b2963679b5e45f4ecb6` |
| 53 | `theorem` | [set_lintegral_deterministic'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-lintegral-deterministic.md) | 393 | `result-track:79cf3660d296018c72e6e4e99f5ccc378f87216738e2772ffedacec477250f2e` |
| 54 | `theorem` | [set_lintegral_deterministic](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-lintegral-deterministic-source-edition-2.md) | 400 | `result-track:f9c1d4c35f21d21cf353bb54050e96fcd1faf9e2b50b7c770eb4659a19f4a560` |
| 55 | `theorem` | [integral_deterministic'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/integral-deterministic-source-edition-2.md) | 406 | `result-track:b44dd8ca681987f6b14157d7e1f3d6075f7dc6c83c7c98e76d23326b71d877ae` |
| 56 | `theorem` | [integral_deterministic](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/integral-deterministic.md) | 413 | `result-track:92a46d13428072b1a79ebcfb690ea217c5627153aad13efdc52fae2d40bbef25` |
| 57 | `theorem` | [set_integral_deterministic'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-integral-deterministic.md) | 419 | `result-track:2342e3e6de745ce27f244d595f1500ac1b2ebef7679c9456e28162028c40a76e` |
| 58 | `theorem` | [set_integral_deterministic](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-integral-deterministic-source-edition-2.md) | 427 | `result-track:afc74a59f6b45577dd9c8c8f17065e21e76d0ad5766e9a4e580336fccb00e5ce` |
| 59 | `def` | [const](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/const.md) | 439 | `declaration-track:f0c715c9f3d69718759cbb174f7ff5a06a165b62f2c28d9baf236fe4fbec3fe1` |
| 60 | `theorem` | [const_apply](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/const-apply.md) | 445 | `result-track:582bb4d9351d94a52ec106c0484e0d508be488b74f33536ebeb0044e897e59f4` |
| 61 | `instance` | [isFiniteKernel_const](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-const.md) | 449 | `declaration-track:fec630829dc291c2546c15711dc3a9fa27f3ebed4d3229f04934bbb4bf865653` |
| 62 | `instance` | [isMarkovKernel_const](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ismarkovkernel-const.md) | 454 | `declaration-track:fd68dc766f1c4f81b0427d344ba15fbceb7a01198e6970d00272371801a77bbe` |
| 63 | `theorem` | [lintegral_const](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/lintegral-const.md) | 460 | `result-track:c548ca68dc700eecdb6c5479586baa8f0409329f2f85ba512c4e721651aca96e` |
| 64 | `theorem` | [set_lintegral_const](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-lintegral-const.md) | 465 | `result-track:552d475dbab333d6ad2e053cd607dd14b74683d73cb0d787c233189d4fd2c39c` |
| 65 | `theorem` | [integral_const](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/integral-const.md) | 470 | `result-track:2f65d378fc42f3975a3b37ea017a3845caa09447a7957ffaf23fb175a3e15e79` |
| 66 | `theorem` | [set_integral_const](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-integral-const.md) | 476 | `result-track:7c442cc417ee744ce130a50e405ed4a5497e3a65ff7a630f0de7b1afe968f284` |
| 67 | `def` | [ofFunOfCountable](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/offunofcountable.md) | 485 | `declaration-track:e2008b0a48289a7a9fe86e554b8ba7b3350fd146ab840e89a6c912f5d4397b10` |
| 68 | `def` | [restrict](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/restrict.md) | 496 | `declaration-track:5a3e18c26843d1614ccd64918f174df2d6f7653284faf99e19e2001a658d6546` |
| 69 | `theorem` | [restrict_apply](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/restrict-apply-source-edition-2.md) | 504 | `result-track:ef7c63b5cfca8abcb825e04de5db0589ecad11451454ee3df72cd65bc482376a` |
| 70 | `theorem` | [restrict_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/restrict-apply.md) | 509 | `result-track:52e83d27cc0823ba3d165432be364fbb6b6a24537b7903162a12d2ddbd0cf284` |
| 71 | `theorem` | [restrict_univ](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/restrict-univ.md) | 515 | `result-track:cf865a065f6212e383c254abca9d8bb6509214b374e917fc7bbfdd4454800c46` |
| 72 | `theorem` | [lintegral_restrict](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/lintegral-restrict.md) | 521 | `result-track:b1e7b9dad4a08a724a76f0bee30e8b3707dba65f784823e400597fdf33a6fa83` |
| 73 | `theorem` | [set_lintegral_restrict](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-lintegral-restrict.md) | 526 | `result-track:bfee2f0ab58e175eca194e0c9052cdf9549f49402d32c626078aafa36429b62e` |
| 74 | `theorem` | [set_integral_restrict](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-integral-restrict.md) | 532 | `result-track:c2d3a9c5577ad2c7d8bc735623bc8fa318ef64b51bddbdc493ad7eaf5a877bfa` |
| 75 | `instance` | [IsFiniteKernel.restrict](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-restrict.md) | 538 | `declaration-track:be5b463dfeb5fee60b25f64128ef9ce8fc1fe703b2feea5a7f9d2ac1e3eee52f` |
| 76 | `instance` | [IsSFiniteKernel.restrict](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/issfinitekernel-restrict.md) | 545 | `declaration-track:371ae906b5b037ac810c2a88525f1752948a9d26cffe5c65f3aedba9fbc83a00` |
| 77 | `def` | [comapRight](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/comapright.md) | 560 | `declaration-track:03b3d5480404c8de8646987db39944b30973d055593d1323b0129297027216b7` |
| 78 | `theorem` | [comapRight_apply](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/comapright-apply.md) | 572 | `result-track:721375b3b8b6b999b039ce352723f0323eed986414d40bfb77f0b474edf4f557` |
| 79 | `theorem` | [comapRight_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/comapright-apply-source-edition-2.md) | 577 | `result-track:9dce219f43c0bf4594aa3b4c6582b1e5033bae6c1d062d39eb40b620eaedf558` |
| 80 | `theorem` | [IsMarkovKernel.comapRight](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ismarkovkernel-comapright.md) | 583 | `result-track:2c78597f4204fcb2c1964b19c512afc6dcc5b5c3340e49266c5c754c83cbf3b4` |
| 81 | `instance` | [IsFiniteKernel.comapRight](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-comapright.md) | 591 | `declaration-track:a9a72b976744cb245a540c89297cacf0dd9dfd986561960421f93999b6251961` |
| 82 | `instance` | [IsSFiniteKernel.comapRight](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/issfinitekernel-comapright.md) | 598 | `declaration-track:70a0bd57593689e800dcc1a59997dfbb08a2e2b51bacfa43f51a4aa6b596c9a1` |
| 83 | `def` | [piecewise](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/piecewise.md) | 623 | `declaration-track:d18d60a19f9200627533bba42ffddb3205cac393f60ff70cd36a8a27b3dd3cb2` |
| 84 | `theorem` | [piecewise_apply](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/piecewise-apply.md) | 628 | `result-track:c456f38f76b61023d7bea1c07c5b4346ff234745248a5f6b9e6e7dd85022a72d` |
| 85 | `theorem` | [piecewise_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/piecewise-apply-source-edition-2.md) | 632 | `result-track:f90b9eebc41d34f27234ebbcce8182d1637b5d16f65f04b44b21411bb279cd5b` |
| 86 | `instance` | [IsMarkovKernel.piecewise](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/ismarkovkernel-piecewise.md) | 637 | `declaration-track:8028c18ad538e36d4f2b559c9f922e7bd1f41a0edeeba78c06bc512f0cfa3f71` |
| 87 | `instance` | [IsFiniteKernel.piecewise](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/isfinitekernel-piecewise.md) | 643 | `declaration-track:2cbac578040732662bd2fe1be84267991e01aeb9b67b76eb4f8880d4e64c9bde` |
| 88 | `instance` | [IsSFiniteKernel.piecewise](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/issfinitekernel-piecewise.md) | 651 | `declaration-track:49377683c721f0c5cc6f1a9dd8ce178a3348fbf46e88cb797d15372e06abf954` |
| 89 | `theorem` | [lintegral_piecewise](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/lintegral-piecewise.md) | 659 | `result-track:62b7032d8dc54d9f7805185d5cf08f134d4b96876adccbb56389b7bc46593160` |
| 90 | `theorem` | [set_lintegral_piecewise](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-lintegral-piecewise.md) | 664 | `result-track:87c956312094838997c26f6c9c3d30a572563a92b9342975e45cd715bdadfc4d` |
| 91 | `theorem` | [integral_piecewise](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/integral-piecewise.md) | 670 | `result-track:4229bd01a7ee43229a4b57c20d1b6433b90979838071ff48156f53ff3af08c03` |
| 92 | `theorem` | [set_integral_piecewise](../../../../ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/declarations/set-integral-piecewise.md) | 676 | `result-track:1b7d79333652b3e79c7b55f75cafb6ed05b82913fba1be14a0dac397fbabbab6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf3e10b78146ed93604ec58ef2f6446f5a4e6fb8a2fec0d702fd77134ca7e169 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
