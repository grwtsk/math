# Verification target: Radical Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1d676991ce863bb4e497a44596cda8d3b4e3dba",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1d676991ce863bb4e497a44596cda8d3b4e3dba`.

Source path: `GRWTSK/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeFactors](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors.md) | 60 | `declaration-track:98993bbee4c7a63ed9e302997bb64f441d0eb343e3b906171d2e8149150b021a` |
| 2 | `theorem` | [toFinset_normalizedFactors](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/tofinset-normalizedfactors.md) | 64 | `result-track:5d1775988d8f43f43a6204b476166b254f0cadf3e6d38897601cb05fb63e15d2` |
| 3 | `lemma` | [mem_primeFactors](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/mem-primefactors.md) | 69 | `result-track:7f6475a3b328cefe5d588c546b7832c0a48ed27ae964f8246e7ab66241b3354a` |
| 4 | `theorem` | [Radical Basic Namespaced Public](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-eq.md) | 72 | `result-track:b0344dc91af9fcfba0bf49f46d905f99232f67f2cc8fd2a137af890bc739c4ef` |
| 5 | `lemma` | [primeFactors_zero](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-zero.md) | 77 | `result-track:67ffacbae025f4d2602a0c86b9a5df96cf14e8179ef361795a100533575d2be2` |
| 6 | `lemma` | [primeFactors_one](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-one.md) | 79 | `result-track:57438f688b944edfeab789d2efc6ecfdde6e189355c5fb4618a194b247be8327` |
| 7 | `lemma` | [pairwise_primeFactors_isRelPrime](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/pairwise-primefactors-isrelprime.md) | 81 | `result-track:c53883409eab74e5dc5b9bba30836499fe9de003fb0bcd16f3a4a8b16b605976` |
| 8 | `theorem` | [primeFactors_pow](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-pow-source-edition-2.md) | 92 | `result-track:f7b127f2a39ae9727d1b7f5c82372bee3448a2f8def5dc3c97be67bd2ef5ff89` |
| 9 | `theorem` | [primeFactors_pow'](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-pow.md) | 96 | `result-track:2b4c6fc5da170ebba86a4d0ce7fd9d507955c47e26a6e66041a3dbdb9ad6f239` |
| 10 | `lemma` | [normalizedFactors_nodup](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/normalizedfactors-nodup.md) | 99 | `result-track:945c1452d490046b5226ea2eeadcb47835aeede49e5b4a41bdd3a143be58d6a5` |
| 11 | `lemma` | [primeFactors_of_isUnit](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-of-isunit.md) | 108 | `result-track:00da2c93725969b27381898bdda8ad35ee960d9ed230a6954b3756653ee5cbc1` |
| 12 | `theorem` | [primeFactors_eq_empty_iff](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-eq-empty-iff.md) | 116 | `result-track:83672f264604d3b4ee77d86074d7d046b29ebc35861868a15a0b90c6ce579bbf` |
| 13 | `lemma` | [primeFactors_val_eq_normalizedFactors](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-val-eq-normalizedfactors.md) | 120 | `result-track:ddb8d52aead95205c7f1d7c9d47703567bd59098bf1883d99b0639a5fc4e6a60` |
| 14 | `theorem` | [primeFactors_mul_eq_union](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-mul-eq-union.md) | 127 | `result-track:76ac0855895b66a48b995415a5cb13dab5552d19a4cdab5dcf8944ce67872a2f` |
| 15 | `theorem` | [disjoint_primeFactors](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/disjoint-primefactors.md) | 133 | `result-track:c2499cdfdfe923b7d6544c63530a92f69c81c9b9bdfa090a517284f8d88aa724` |
| 16 | `theorem` | [primeFactors_mul_eq_disjUnion](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-mul-eq-disjunion.md) | 138 | `result-track:272ef4a7b6463aceea37ea58a4bcb0196886311290488660f50d73f2e78f97e1` |
| 17 | `def` | [radical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical.md) | 152 | `declaration-track:5ff62a1182d558db7274db1b13aaadaeb88de7d359830c19c63784ddbec491ab` |
| 18 | `theorem` | [radical_zero](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-zero.md) | 155 | `result-track:a357889e07fa0a2056ce24cc96693dd09fb2d4e07cdbbf40de090167ef8c8e7f` |
| 19 | `theorem` | [radical_one](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-one.md) | 156 | `result-track:b748538ca3ca7667900d1bef031909f26a32f4a9bf1c1fa3b3621cb0e3c981f6` |
| 20 | `theorem` | [radical_eq_of_associated](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-eq-of-associated.md) | 157 | `result-track:d0328df3b67741f3dfb76fd31d0bd7406a514f197041ac2f5095bed81373a2fd` |
| 21 | `lemma` | [radical_associated](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-associated.md) | 160 | `result-track:bae870d5fc17e4e37b971aa1af2605754a6a8b57ccd05226beb666c757039d88` |
| 22 | `lemma` | [Radical Basic Namespaced Public](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/dvd-radical.md) | 166 | `result-track:2c4af422330f38aa59ee49750f7cf21ad7c10483e06eaf3f38feab90f4b3cf00` |
| 23 | `theorem` | [radical_of_isUnit](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-of-isunit.md) | 169 | `result-track:4a216cc426369c04c03f42eab2b23746b8c117721476efe41a88da8acce57dc3` |
| 24 | `theorem` | [radical_mul_of_isUnit_left](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-mul-of-isunit-left.md) | 172 | `result-track:f99b56a9557e84380cab7f1b1950cb1ce3e904e1b04bf75e396a393e36b2191c` |
| 25 | `theorem` | [radical_mul_of_isUnit_right](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-mul-of-isunit-right.md) | 175 | `result-track:de3501f42d5176fbdd9fa63e43789de2f22d5f67d213a3ddfac72fdd7c632d3a` |
| 26 | `theorem` | [radical_pow](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-pow.md) | 178 | `result-track:8d46cfe30333c7f0e11aa814e276880a5f0c90c928a6158480f730bca36ddcb4` |
| 27 | `theorem` | [radical_pow_dvd](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-pow-dvd.md) | 181 | `result-track:a4af6e0846725a63aceb0f2c0e389fc9c5619698f6d84a2544505a798ea6779e` |
| 28 | `theorem` | [radical_dvd_self](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-dvd-self.md) | 186 | `result-track:12acb96dd2c34ff36f77e80fb96ad6656afa84f300e2c9aa03c077f9e30045ff` |
| 29 | `theorem` | [radical_of_prime](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-of-prime.md) | 196 | `result-track:9bfa07523fcf2fefcd5395a7836e75d06814ce1a7f15a21240574cdc75032a7e` |
| 30 | `theorem` | [radical_pow_of_prime](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-pow-of-prime.md) | 201 | `result-track:f9f7ab33f0a9603f99c6c450eb495fd72a62947a520cc821cb3de2bb58ca31ac` |
| 31 | `theorem` | [radical_ne_zero](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-ne-zero.md) | 206 | `result-track:4cf19fcc1cb55459bfab78992ebf17fd15d163715f1be172deb8f1c39e45c1a9` |
| 32 | `lemma` | [dvd_radical_iff_of_irreducible](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/dvd-radical-iff-of-irreducible.md) | 217 | `result-track:7129b709311e6d41c8415a151b77a7dc779b3e8356371f04b7a4af8501e42242` |
| 33 | `lemma` | [isRadical_radical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/isradical-radical.md) | 226 | `result-track:4a660bf2eefbfc37aa88ccf74694e1e82187201dc411df4e05ffb816c42e4c4c` |
| 34 | `lemma` | [squarefree_radical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/squarefree-radical.md) | 241 | `result-track:57aba11556ee91624540cbc64d1dbb45b5f913e974ee15c8ae689f1750dd6a95` |
| 35 | `lemma` | [primeFactors_radical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/primefactors-radical.md) | 245 | `result-track:f529a266350d2c42d0451e36ab90ed98246985e4d37f1c22488ecef113ff85ed` |
| 36 | `lemma` | [radical_eq_iff_primeFactors_eq](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-eq-iff-primefactors-eq.md) | 253 | `result-track:9d025b04d3ff2974452ab294b3ee04b640f63f58ecfd1efe949ffd1173c876b0` |
| 37 | `theorem` | [radical_eq_one_iff](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-eq-one-iff.md) | 258 | `result-track:7aee08877cd5142ee64fd44cf61bb74a26410e047c5faa00bf81e6713086e4d9` |
| 38 | `lemma` | [radical_radical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-radical.md) | 267 | `result-track:7483ed97c09730400c56cb8659da996b322799f5dea6d95bf9e7cf75c931d6fd` |
| 39 | `lemma` | [radical_dvd_radical_iff_normalizedFactors_subset_normalizedFactors](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-dvd-radical-iff-normalizedfactors-subset-normalizedfactors.md) | 270 | `result-track:d4ec1066fb03f7d33437a4b904192497fbf802f139cafda86c34640423afa5f7` |
| 40 | `lemma` | [radical_dvd_radical_iff_primeFactors_subset_primeFactors](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-dvd-radical-iff-primefactors-subset-primefactors.md) | 279 | `result-track:f2606dc967b85631323dcece0c935ad340e89c6bad707b0f8b767362f5cae477` |
| 41 | `lemma` | [radical_dvd_radical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-dvd-radical.md) | 287 | `result-track:c64077423674b8a89b3ebaa2ac2b661db8417fb05c44db46fad4f66c27f897f5` |
| 42 | `lemma` | [dvd_radical_iff](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/dvd-radical-iff.md) | 298 | `result-track:bba7c160842dd31fc70ff3875e5a2c192df27f56825278514a5a8f653b6734bf` |
| 43 | `theorem` | [radical_dvd_iff_primeFactors_subset](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-dvd-iff-primefactors-subset.md) | 304 | `result-track:4ae0c8a66c495c11b2bde808defc7b9b1a116d7f31a620229dd6ea68273b415f` |
| 44 | `theorem` | [exists_dvd_pow_iff_radical_dvd](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/exists-dvd-pow-iff-radical-dvd.md) | 309 | `result-track:881105e1bc33309b30202a52b3c0f9575abc11d718eff17b9e7527b46a2c9be3` |
| 45 | `theorem` | [exists_dvd_radical_self_pow](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/exists-dvd-radical-self-pow.md) | 322 | `result-track:7dc78b45c96630ba7a4882eb4292e42a8a5bb7d5e49aad6c19d959d0119f0eca` |
| 46 | `theorem` | [radical_mul](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-mul.md) | 326 | `result-track:9154e531651638b6e7841559f017506dcf0dfd77ed20b64faadb0947bccde7ad` |
| 47 | `theorem` | [radical_prod](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-prod.md) | 331 | `result-track:4179efd876f14e32d44402c6e3daaa05d9aaeeeba25529d2623c347e0f0f879f` |
| 48 | `theorem` | [radical_mul_dvd](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-mul-dvd.md) | 342 | `result-track:2379d255779a67cbeb1ad34c6e5cc6cd14c9ad362735e5660ff399d4b68c4b74` |
| 49 | `theorem` | [radical_prod_dvd](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-prod-dvd.md) | 352 | `result-track:3dcb69f3512e9e4d590de5ea86b86d6e8496778236a36d77dc475311e659edfa` |
| 50 | `theorem` | [radical_mul_of_dvd](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-mul-of-dvd.md) | 360 | `result-track:222adebde6e241710d4bf16ab3176859723f2a9221940c349164e46345a01131` |
| 51 | `theorem` | [radical_neg](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-neg.md) | 379 | `result-track:44034d2bb26c59626d7b7a4988858e04c1a7cc7de8981ea0621b48d2e26a921e` |
| 52 | `theorem` | [radical_neg_one](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-neg-one.md) | 382 | `result-track:e1a4cb643e05c1cea2dc678214e27082e80df3306d056f93d5a623eede0377a1` |
| 53 | `def` | [divRadical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/divradical.md) | 392 | `declaration-track:a200734680f79bdb68f720767ee1ea7497f6aa8cc5c4c37d4ca298fa956670de` |
| 54 | `theorem` | [radical_mul_divRadical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/radical-mul-divradical.md) | 394 | `result-track:eb8b273d2cafc2d031eb7d67a0eb8376db31f430aa5c13e9af3ea710208ac08d` |
| 55 | `theorem` | [divRadical_mul_radical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/divradical-mul-radical.md) | 398 | `result-track:87b121b950195e7f6fde0ea58135c7a4ac8798cb3b15867fbcb343b57d733fee` |
| 56 | `theorem` | [divRadical_ne_zero](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/divradical-ne-zero.md) | 402 | `result-track:3a6b61114d2b638c3f0bd17a048771030a6be85e55bf863a71409c01ad4f1918` |
| 57 | `theorem` | [divRadical_isUnit](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/divradical-isunit.md) | 406 | `result-track:e73d68f97c6802351266c9dff6d8b488962b37d939a67f7c0c9436e9b3f0b9be` |
| 58 | `theorem` | [eq_divRadical](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/eq-divradical.md) | 409 | `result-track:7024db401967de9591250b7591040952b9255c3085b79fee20f8c0757ab6c6c2` |
| 59 | `theorem` | [divRadical_mul](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/divradical-mul.md) | 413 | `result-track:e5f186f9d7df6712b710dd74cdfc83b6f984c61205f647ae0d8c935494cac1f3` |
| 60 | `theorem` | [divRadical_dvd_self](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/divradical-dvd-self.md) | 419 | `result-track:7a96e6b376cd3266d707c5cd75d2c7b01cfcf3b9cc17a9251b685c28febac615` |
| 61 | `theorem` | [Radical Basic Namespaced Public](../../../../CommutativeAlgebra/RadicalBasicNamespacedPublic.lean/declarations/divradical-source-line-422-occurrence-2.md) | 422 | `result-track:83bdf65fc671bf3e06a4517d9e875e6cdd4e182e56c86fc82cf688380880ffa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56c0f4c4b2cfc03635fb82998870152e84e3d666ff456448f3c9dfcbac8b1578 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
