# Verification target: Int Parity Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "614bf06763c7efc0c6254147c454710a62442e4f",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Parity/Variantf165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `614bf06763c7efc0c6254147c454710a62442e4f`.

Source path: `GRWTSK/Algebra/Parity/Variantf165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Parity/Variantf165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean.json)

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
| 1 | `lemma` | [odd_iff](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-iff.md) | 29 | `result-track:819e5594330cd4230a25fc75d40fde559a1968b210f89fdac4c452c182ad39a9` |
| 2 | `lemma` | [not_odd_iff](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/not-odd-iff.md) | 33 | `result-track:04367e6c61b7a5a398b962ca1b5cda0f3d987490e85d9d66496c84484bc7cfdf` |
| 3 | `lemma` | [not_odd_zero](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/not-odd-zero.md) | 35 | `result-track:de5993b51fc5af8256f6517c641aa9bda7e06968fe217a08af9c3a6ceecb2733` |
| 4 | `lemma` | [not_odd_iff_even](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/not-odd-iff-even.md) | 37 | `result-track:e9b6f49f2646b3f7f783178d8ad490441def62105d9c07d2f50cc1635adc475b` |
| 5 | `lemma` | [not_even_iff_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/not-even-iff-odd.md) | 38 | `result-track:0d681a3d2b9d1abc75d20c2f28c7aa26c0caccdb74a2ff45ec7f69725fb84962` |
| 6 | `lemma` | [even_or_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/even-or-odd-source-edition-2.md) | 40 | `result-track:9f92d54cf147789519756b9467a75fba079cf33280f7aed8efe6a65427840e14` |
| 7 | `lemma` | [even_or_odd'](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/even-or-odd.md) | 42 | `result-track:83f4993076829cdf6e5265a509110c34b98b19e53a712cd794b0775a3e2d8dff` |
| 8 | `lemma` | [even_xor_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/even-xor-odd.md) | 45 | `result-track:4eedad3b32b2632b798c52407378b664b941b3ad1caef0ca114e371e8016a1e0` |
| 9 | `lemma` | [even_xor_odd'](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/even-xor-odd-source-edition-2.md) | 50 | `result-track:d5a0d3e013950debb478cf8ddbfe7aad1d9938a60edda459f07984ce0c122b2e` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/instance.md) | 57 | `declaration-track:8c4d08ab1eb243da152dd8024a31fa5cb3a7f32feb68c395ad0c3474a5c9ea92` |
| 11 | `lemma` | [even_add'](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/even-add.md) | 59 | `result-track:c1e4d5469df4b9657309f8243271541917ca0bc95bb1b16b62a1df5f60c1973d` |
| 12 | `lemma` | [not_even_two_mul_add_one](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/not-even-two-mul-add-one.md) | 61 | `result-track:4030ef19feaf28d0f4464b69dedfd5ec213b7d139c35363af6e25595c4ca839d` |
| 13 | `lemma` | [even_sub'](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/even-sub.md) | 63 | `result-track:de5a31a4c98fa6ed802ce1cecb081949374a10ac2db2a8a5ca5b632850e856e6` |
| 14 | `lemma` | [odd_mul](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-mul.md) | 65 | `result-track:16cae71b34dbc5ba0f51b3f9b54b623d4237e24dbf0d3f72c95b64e38496c82b` |
| 15 | `lemma` | [Odd.of_mul_left](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-of-mul-left.md) | 67 | `result-track:3d56606016493dd19af4f6778e87150b8abd49ff3edf2aa73f9bd7045b9fbce9` |
| 16 | `lemma` | [Odd.of_mul_right](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-of-mul-right.md) | 69 | `result-track:4fe87a7fc4a84c88fd605a2b77a7f695cf9aadbf8b59a512f6fcb9e4b720402f` |
| 17 | `lemma` | [odd_pow](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-pow.md) | 71 | `result-track:9e9f6b890e2139ae24db39674a5456b3b591e9ff281fc88ef4dd3de1d2a2053f` |
| 18 | `lemma` | [odd_pow'](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-pow-source-edition-2.md) | 73 | `result-track:cad85cf83940aad5b3a5830af69a26b0b1a6d6f35c82cf2ea96ed12f0e0abeb7` |
| 19 | `lemma` | [odd_add](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-add.md) | 75 | `result-track:32e197b356b8b8e4323aaace9eb0414cf00e68fef55f3c6f1d178b5dd2909e88` |
| 20 | `lemma` | [odd_add'](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-add-source-edition-2.md) | 77 | `result-track:53527414253f6368b9a9a47741f39f01e6441a0aa71d9fe49b3a50c31147fd6f` |
| 21 | `lemma` | [ne_of_odd_add](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/ne-of-odd-add.md) | 79 | `result-track:96228ee72a1c2221b8c1d28a3836586dd1732a1d0e48ccfbbd6c37c5fee03da6` |
| 22 | `lemma` | [odd_sub](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-sub.md) | 81 | `result-track:73f2a854ae62dc6dbbc2d6410de2d29c00afa5c0d7bf986d083b8654640ff878` |
| 23 | `lemma` | [odd_sub'](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-sub-source-edition-2.md) | 83 | `result-track:b11224b96c7505382cfbc4fe7b0b4996d55b86104a844cb0c19e3bb2ebf09fea` |
| 24 | `lemma` | [even_mul_succ_self](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/even-mul-succ-self.md) | 85 | `result-track:ce28175cf3cad8a54e943b52567085370b224bcf0f91f383c116a23dc2401610` |
| 25 | `lemma` | [even_mul_pred_self](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/even-mul-pred-self.md) | 87 | `result-track:6852026d04e098047e7946b9aa76cc52a836cb980ca13cf2588ac264e6bbde17` |
| 26 | `lemma` | [odd_coe_nat](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-coe-nat.md) | 89 | `result-track:c49f13c314f62a34b4299b83fcd781ab8dfaa98151778573172901c31ecc60ff` |
| 27 | `lemma` | [natAbs_even](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/natabs-even.md) | 91 | `result-track:45f8555ce27d75765c0561b962f4bee82a2c1a95e33ec920207eacccc50c9c4a` |
| 28 | `lemma` | [natAbs_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/natabs-odd.md) | 94 | `result-track:5f95529c374f43a459e9d23d9c014ae7b17a0164411fe397f14ec7168519192f` |
| 29 | `lemma` | [four_dvd_add_or_sub_of_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/four-dvd-add-or-sub-of-odd.md) | 99 | `result-track:a4066fd3f26c5bffedb69be9e77695ac1fc9f31af8f89d488c52a4d522de3044` |
| 30 | `lemma` | [two_dvd_mul_add_one](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/two-dvd-mul-add-one.md) | 102 | `result-track:d20b0704eec4ea79a75138bf6ab4d559d467a62d6f1e9945944ca17e6a7f69a7` |
| 31 | `lemma` | [two_mul_ediv_two_add_one_of_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/two-mul-ediv-two-add-one-of-odd.md) | 105 | `result-track:1e383acbfd408d4de808a877b41a864a69471db8a1a56ee989cf4a340d1fae25` |
| 32 | `lemma` | [ediv_two_mul_two_add_one_of_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/ediv-two-mul-two-add-one-of-odd.md) | 107 | `result-track:5a23f624b5cc19159fe7ba17593d2197385bd4636033f84faec4af3a20b1fa72` |
| 33 | `lemma` | [add_one_ediv_two_mul_two_of_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/add-one-ediv-two-mul-two-of-odd.md) | 109 | `result-track:2fe4fff8173121c1b42eab2dab4efe1bae24a901e458f090add47129cc9c9bce` |
| 34 | `lemma` | [two_mul_ediv_two_of_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/two-mul-ediv-two-of-odd.md) | 111 | `result-track:a52c31b13e8963ccf658a2daa19708d33cbdb5424d3bc7b6990cd6c7f2ae6a95` |
| 35 | `theorem` | [even_sign_iff](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/even-sign-iff.md) | 114 | `result-track:74c22d5ffb600fa8da62116ac721aa16c220902cf6587ef72b553cf7ecc08cb5` |
| 36 | `theorem` | [odd_sign_iff](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-sign-iff.md) | 117 | `result-track:c670eb00be34ae652745bce25b6d821e2fa07e26b3285f0280f33855eb7e7f8f` |
| 37 | `theorem` | [isSquare_natCast_iff](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/issquare-natcast-iff.md) | 120 | `result-track:b7183e0283915334829785a7f15ee0c9e92bbdedbe1974cf28126b8f1aafc591` |
| 38 | `theorem` | [isSquare_ofNat_iff](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/issquare-ofnat-iff.md) | 126 | `result-track:902a4d98fe2fe4852a9ebaf9e0e64257d5b31c3804e161b72527f628690495e0` |
| 39 | `theorem` | [natCast_pow_pred](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/natcast-pow-pred.md) | 131 | `result-track:406dafec36adc8ab36d2671b97518ddcf66e7bbf29925e71d9d98e41892001be` |
| 40 | `theorem` | [coe_nat_two_pow_pred](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/coe-nat-two-pow-pred.md) | 135 | `result-track:814843a695188f264a534c8d2d67964f6c3d57c45818ba3daf1db7c417a78088` |
| 41 | `lemma` | [sq_emod_four](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/sq-emod-four.md) | 138 | `result-track:3c0ff73c85d26679e1127802670218346d9062f846dd511205d99418018c0293` |
| 42 | `theorem` | [sq_emod_four_eq_one_of_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/sq-emod-four-eq-one-of-odd.md) | 141 | `result-track:fcf2318115461a0856d2a95d95bcd12d883a8620e6a9037e11caeda1c9a78dd7` |
| 43 | `lemma` | [eight_dvd_sq_sub_one_of_odd](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/eight-dvd-sq-sub-one-of-odd.md) | 144 | `result-track:e42efc6e63d19823449e0b87d2bab9b29cd6a7a32892fdddd8f89d8494387528` |
| 44 | `theorem` | [Odd.neg_zpow](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-neg-zpow.md) | 155 | `result-track:c2771cd97f0101bf2acf09afd195459850bececeec5faae72c0b379bb442984c` |
| 45 | `theorem` | [Odd.neg_one_zpow](../../../../AssociativeRingsAndAlgebras/IntParityPublic.lean/declarations/odd-neg-one-zpow.md) | 167 | `result-track:cc9c6dda5a5a2f8554649c755b6ea6d926801f5e85f76e56ca2328cd6781724b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6842d3562c5aa3edbb1e135f7f94aefb567ebf1e5896e04ff7ba37b3d3edcec8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Parity/Variantf165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean","GRWTSK/_verification/specifications/Algebra/Parity/Variantf165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
