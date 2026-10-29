# Verification target: Filtration Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61cc2a9c801a1b9db6db34860d0abbf0c5b40465",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Filtration/Variant9a7d219311f4e8f2e3cb45e56324f72561a3c86d62529ed2bdd7fbf6a23058ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61cc2a9c801a1b9db6db34860d0abbf0c5b40465`.

Source path: `GRWTSK/Algebra/Filtration/Variant9a7d219311f4e8f2e3cb45e56324f72561a3c86d62529ed2bdd7fbf6a23058ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Filtration/Variant9a7d219311f4e8f2e3cb45e56324f72561a3c86d62529ed2bdd7fbf6a23058ce.lean.json)

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
| 1 | `structure` | [Ideal.Filtration](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ideal-filtration.md) | 60 | `declaration-track:d08904ef5b5247b1e48925c85c9a5798aca84884a123a931e4da54b68956a28e` |
| 2 | `theorem` | [pow_smul_le](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/pow-smul-le.md) | 69 | `result-track:0c49a7849732e3b07575d94b29497121fe0d5c6d7d82b14a783707ae3af170a9` |
| 3 | `theorem` | [pow_smul_le_pow_smul](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/pow-smul-le-pow-smul.md) | 76 | `result-track:37365111c2d288d18f9da91cfa006a17afa7c8e890086a09e7ab79b9f07d11ed` |
| 4 | `theorem` | [antitone](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/antitone.md) | 80 | `result-track:b1a3c3cd383a6526b310c4c5e16d1d4bc10895faada270f2decb68393f6c301c` |
| 5 | `def` | [Filtration Namespaced Public](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/trivialfiltration.md) | 85 | `declaration-track:6f55ec9273229147f0f36d1022af413d9d21b62b82ec8a9ba7dc772b97cc45f7` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 91 | `declaration-track:71a83a88482db84c29964fa24fd4f69054a88bb2bce2326b181cdcc2b0aeeaf3` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 97 | `declaration-track:dd8cbf5ba151662723a1ec6198689324b0ef9fa0e1ea0ec0e425b47e91dd2e3a` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 111 | `declaration-track:8e9a15fa29f2498fd2ec41022d6766cf2e40037d2648a9f9d2b8317dbc161fcd` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 117 | `declaration-track:f42c30384809ddcd958a9143d85210937ac4bbad656aac2f40278ea7940403ee` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 131 | `declaration-track:1d22fb769b23c674745d1a14887eb63d8c9b556ff109a884679f550491d0f224` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 134 | `declaration-track:bee6879fd7e2bd4cd65e99cd8848bea1d3d42d35cfbba56306bfb1197b1d89c8` |
| 12 | `theorem` | [sup_N](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/sup-n.md) | 138 | `result-track:efceadd8120c8e13fd8286a7a80a4b820e874175431bee700013a63b31c9111a` |
| 13 | `theorem` | [sSup_N](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ssup-n.md) | 142 | `result-track:d1f7111902cbe45977c69bed888dbce87a885acbbd610dc9a94123c9e8edc1a7` |
| 14 | `theorem` | [inf_N](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/inf-n.md) | 146 | `result-track:38619d4c82a627a9bca6bbd4fad48dddcf41458467d2e29c76f631b0cfca5381` |
| 15 | `theorem` | [sInf_N](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/sinf-n.md) | 150 | `result-track:736bfb0af0bb9ee6cfab69f23d7e346aa7a2f1f2abeb370b45805ebb8866aec0` |
| 16 | `theorem` | [top_N](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/top-n.md) | 154 | `result-track:65c4ec950028d55542654bd7614d5f8123553cd96b54bdbd9c10d8ceb1ac1a86` |
| 17 | `theorem` | [bot_N](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/bot-n.md) | 158 | `result-track:8e0cbc02e94989659e2c76890d197c971064146ba42e962f4517956c33e34d68` |
| 18 | `theorem` | [iSup_N](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/isup-n.md) | 162 | `result-track:1dd8348837ead0ec54789a37ef99fd0050cd3251efc71d33062239bac389c27f` |
| 19 | `theorem` | [iInf_N](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/iinf-n.md) | 166 | `result-track:0ba8b562b86c117d89346feb6e6c78b07c4f43c67f34cdd86ebb256190412994` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 169 | `declaration-track:71442faa0bbdf41b35ea84f4feef3b2c386022c491e7d8cfd398829b1037404f` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 172 | `declaration-track:4d1b8996ebb82254a188b90aa565b1560a6fc6d52c575da2c320cb6d6ce3bb58` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/instance.md) | 177 | `declaration-track:0d3f0f7439f077bec04fd6b4a6d49ad349ade8c45e16136225f3ac836e1fe8dc` |
| 23 | `def` | [Stable](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stable.md) | 181 | `declaration-track:e69ce6453c316c040f8b022d3794fd10710a9f232fe667bd0dc670ca7c3f74f1` |
| 24 | `def` | [Filtration Namespaced Public](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stablefiltration.md) | 186 | `declaration-track:e001477744af770fac12aad53fa4786ec5722ff2c99e910450fd90e4b82b4f79` |
| 25 | `theorem` | [Filtration Namespaced Public](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stablefiltration-stable.md) | 192 | `result-track:bfa61196a0e90fc594c08da04f796b1214d485b9855dd3c832fceef7e30c653d` |
| 26 | `theorem` | [Stable.exists_pow_smul_eq](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stable-exists-pow-smul-eq.md) | 201 | `result-track:8f2154f2bc14c4f5a9e622ef30971dde7e368cb3e0c248fc7c2481e45fe2bfcb` |
| 27 | `theorem` | [Stable.exists_pow_smul_eq_of_ge](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stable-exists-pow-smul-eq-of-ge.md) | 209 | `result-track:91c621f46263165e7721a8365565498310e7929602845c550511e6debf03f490` |
| 28 | `theorem` | [stable_iff_exists_pow_smul_eq_of_ge](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stable-iff-exists-pow-smul-eq-of-ge.md) | 217 | `result-track:0ca348d8efe03505759c61d9f276a3721d6cfc5ac2b43db8178e095198b27260` |
| 29 | `theorem` | [Stable.exists_forall_le](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stable-exists-forall-le.md) | 223 | `result-track:81e776f54fab849450da0b0698fa4685218a6d59c3eec7a663a671bdfdd0acfd` |
| 30 | `theorem` | [Stable.bounded_difference](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stable-bounded-difference.md) | 235 | `result-track:d8ac9fd0e5686deb96b8c4f461d9fc2218a1bfc34a0803722c71d4301b4ae43a` |
| 31 | `def` | [submodule](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/submodule.md) | 248 | `declaration-track:9c1844c5cb8f91e2b21a98aca9f858cf2cf5cae9a1531fe0fad0f855f02358c4` |
| 32 | `theorem` | [mem_submodule](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/mem-submodule.md) | 261 | `result-track:0468f43f6b0b48bc8d1de5d4486c4c77e3d32104d455ef9236da357f1ad4dede` |
| 33 | `theorem` | [inf_submodule](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/inf-submodule.md) | 264 | `result-track:f3664ee6d56a94076c05219900468230db7c9b6600f8255fc67a3cfd160ee927` |
| 34 | `def` | [submoduleInfHom](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/submoduleinfhom.md) | 271 | `declaration-track:adb7280d156a4adf05665caa8000addafb5b1623aa419fddf5ba88819a7a759b` |
| 35 | `theorem` | [submodule_closure_single](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/submodule-closure-single.md) | 278 | `result-track:f5bc27c50ab252f23221cb52bec49cf811e79c4eb45d863adf32ac66916801d8` |
| 36 | `theorem` | [submodule_span_single](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/submodule-span-single.md) | 293 | `result-track:64a42bec06adee2264bea048fa074e55e85475e69101c1cb28ebf6cf9c588e4d` |
| 37 | `theorem` | [submodule_eq_span_le_iff_stable_ge](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/submodule-eq-span-le-iff-stable-ge.md) | 298 | `result-track:78100981eb56f2b11b7e47097b34d0fc948408918ca098c58a3d77059ef94342` |
| 38 | `theorem` | [submodule_fg_iff_stable](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/submodule-fg-iff-stable.md) | 344 | `result-track:5059196dc2d6e958c9fce724349bfdec05fb2245ac1c6f802cc8105a0763d4c9` |
| 39 | `theorem` | [Stable.of_le](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stable-of-le.md) | 375 | `result-track:1177b73454cc66bbf787d6db4e695d6d70ad8c4d37324ee9fcbc0e208b43e29e` |
| 40 | `theorem` | [Stable.inter_right](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stable-inter-right.md) | 383 | `result-track:f70bb34d4bf7b088853b0f9d892df7070937cc429f0f390956447347975080bd` |
| 41 | `theorem` | [Stable.inter_left](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/stable-inter-left.md) | 387 | `result-track:ddea6ab4a7c8f2c6b80b0ade850d74fc045d502cddcbbdead70f44711eb18f73` |
| 42 | `theorem` | [Ideal.exists_pow_inf_eq_pow_smul](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ideal-exists-pow-inf-eq-pow-smul.md) | 396 | `result-track:22aefc538cd0bc1f8ed40e2b8189b59ff4f1f00096a8d14cdb2086b437ec7db1` |
| 43 | `theorem` | [Ideal.mem_iInf_smul_pow_eq_bot_iff](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ideal-mem-iinf-smul-pow-eq-bot-iff.md) | 400 | `result-track:00a7cfbf5c8ed0e12eb340df2042a69e306a5503d8aff8552c1facb46d5556f5` |
| 44 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_le_jacobson](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-le-jacobson.md) | 423 | `result-track:3b0ca35d0c60baf6e2b42359a560e2b2de119891bce31f8f8fc688168f62b80d` |
| 45 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_isLocalRing](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-islocalring.md) | 433 | `result-track:b6af422a1e4b3b9563948664fc81251f6daa9c6c9678cdaae779b0921cf3de43` |
| 46 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isLocalRing](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ideal-iinf-pow-eq-bot-of-islocalring.md) | 439 | `result-track:033882f357d0e24f646d179bb527cf5788b3d25e72d1f88012ec3a2ed3fa7b24` |
| 47 | `theorem` | [Ideal.isIdempotentElem_iff_eq_bot_or_top_of_isLocalRing](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ideal-isidempotentelem-iff-eq-bot-or-top-of-islocalring.md) | 446 | `result-track:400f4b91d0901fb181c00683c9418e4952cbf74d5572ae78776382c6e99a3358` |
| 48 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_isTorsionFree](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-istorsionfree.md) | 459 | `result-track:6f734bff656feac2d6a3e3343f6576e66a081605bc78ab3e14747d94b7db5c2a` |
| 49 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isDomain](../../../../CommutativeAlgebra/FiltrationNamespacedPublic.lean/declarations/ideal-iinf-pow-eq-bot-of-isdomain.md) | 471 | `result-track:5c5f9e8aed37bf1f8b999014e5e5834d26886df966cc26267a73392fa88e49db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=670a76b73bee53f25acc41fb59b35890d7495cf2043800c74b8a6490e557ed9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Filtration/Variant9a7d219311f4e8f2e3cb45e56324f72561a3c86d62529ed2bdd7fbf6a23058ce.lean","GRWTSK/_verification/specifications/Algebra/Filtration/Variant9a7d219311f4e8f2e3cb45e56324f72561a3c86d62529ed2bdd7fbf6a23058ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
