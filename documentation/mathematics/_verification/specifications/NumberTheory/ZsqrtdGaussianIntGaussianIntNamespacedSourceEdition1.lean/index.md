# Verification target: Zsqrtd Gaussian Int Gaussian Int Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be5b7971cf8e9fc33d55dcdb082121a5ca662a8d",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaussianInt/Variant2bf9698ed9a9349cab4c9d1186702233e199ac49e0e225740daccfdcc2536614.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be5b7971cf8e9fc33d55dcdb082121a5ca662a8d`.

Source path: `GRWTSK/Algebra/GaussianInt/Variant2bf9698ed9a9349cab4c9d1186702233e199ac49e0e225740daccfdcc2536614.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaussianInt/Variant2bf9698ed9a9349cab4c9d1186702233e199ac49e0e225740daccfdcc2536614.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GaussianInt](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/gaussianint.md) | 56 | `declaration-track:7dae08aeb5e8972bec68a7de7911dad6010302cc9491b71ad10ceba171306dae` |
| 2 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 64 | `declaration-track:fb6ca2fd1606f46e004a3db6b1cb40bd8b48cb0670533113513d6ae247decc56` |
| 3 | `instance` | [instCommRing](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/instcommring.md) | 67 | `declaration-track:63a1aa13f9fa2f1350e732b8c9b82893984584cb73d0875de92f4d0b78ab2f15` |
| 4 | `def` | [toComplex](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex.md) | 76 | `declaration-track:d90fa4d1f49b1ff6efe19e0896b08935b4453910cec0b7b5e42c08ed3562498c` |
| 5 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:a6eebaf1b8b01a1adae6a5fa91f298ad1928e03300f24eecc7eab46b5c0bdee5` |
| 6 | `theorem` | [toComplex_def](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-def-source-edition-2.md) | 85 | `result-track:9498a899e5aaa5654d4065f074d3ca70c20b6d41d18616bba75b7fe61af30da7` |
| 7 | `theorem` | [toComplex_def'](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-def.md) | 89 | `result-track:12354895319dd3c7872f1f2f2b42ecaefdd4bd2a77f1d9820c91335a08e23a83` |
| 8 | `theorem` | [toComplex_def₂](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-def-source-edition-3.md) | 92 | `result-track:e7671697230b453981486ff84c36ad9259968e853ae27dc102e4eaedb2e32596` |
| 9 | `theorem` | [to_real_re](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/to-real-re.md) | 97 | `result-track:95b7027f8ad3c98d8dac469ffb48dd897d8ec80e9a7849f334015087a8fc1e6e` |
| 10 | `theorem` | [to_real_im](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/to-real-im.md) | 101 | `result-track:0c9f2effe9849058067f1a43176e52900247eab75f08e9034ec844f88163a384` |
| 11 | `theorem` | [toComplex_re](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-re.md) | 105 | `result-track:b3668442553818cc2ed7f8b193ab0df9a84971747666e63f7c7be81dda312b93` |
| 12 | `theorem` | [toComplex_im](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-im.md) | 109 | `result-track:dc4b2a92a5dff0e2de0ff2fa15a663b2ad3bba36b502dcedd81a7724c0e85518` |
| 13 | `theorem` | [toComplex_add](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-add.md) | 113 | `result-track:1c87c9ae11349a75affd45c2792ad81721c424ba3e0dabacb3b3ddfcfe856a11` |
| 14 | `theorem` | [toComplex_mul](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-mul.md) | 118 | `result-track:8db5db97e06940a82a0b30fd4403ae2a3bade62d2dcf8a83f8b934c23908c25b` |
| 15 | `theorem` | [toComplex_one](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-one.md) | 123 | `result-track:3e91c291b2cf839f1af6cf11cc2dc0fce15d40e75608c8511da8e790f4cd69f2` |
| 16 | `theorem` | [toComplex_zero](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-zero.md) | 128 | `result-track:487e7df8909bd302996bd8c0529b84837faa5a1c58a2e33fa4e0e2e50b35dab3` |
| 17 | `theorem` | [toComplex_neg](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-neg.md) | 133 | `result-track:a0bb74a4b5630a95ab509825dd47da1f36841b5e22d03ae158c8d57caa07c684` |
| 18 | `theorem` | [toComplex_sub](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-sub.md) | 138 | `result-track:6ff00f84753eace22133d97282ced01fd329928d46d4c8b4588d47c088892a62` |
| 19 | `theorem` | [toComplex_star](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-star.md) | 143 | `result-track:d64897d5d12b610385ede906e116e1226c675de20833a7e216b76ac90d6c9fa0` |
| 20 | `theorem` | [toComplex_inj](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-inj.md) | 149 | `result-track:fc1be9d3855ab5ee71b5abc0cad3cb4e452146a31e29fb6b43d91cb91bafcd64` |
| 21 | `theorem` | [toComplex_eq_zero](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-eq-zero.md) | 154 | `result-track:df47abf1d50d9fb0a5dfa712888ee8ebbd64eac3b54b19fc821101bb318c3ab7` |
| 22 | `theorem` | [int_cast_real_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/int-cast-real-norm.md) | 159 | `result-track:0cd1e7607dd918918d8d97452e692443b8493d36bb994f761781eeb6099861a0` |
| 23 | `theorem` | [int_cast_complex_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/int-cast-complex-norm.md) | 164 | `result-track:334bb6b085d68b21f7b489c39d7186666b83d967d8d1057548c3afe4d06b0d23` |
| 24 | `theorem` | [norm_nonneg](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/norm-nonneg.md) | 168 | `result-track:b1fb4aa834a181bc696d9001d13b2ce97dd43c1a2578266af1ab56c32d2ec6c5` |
| 25 | `theorem` | [norm_eq_zero](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/norm-eq-zero.md) | 173 | `result-track:2b054ed2505a63e0495a7f9eb9d312fca6d05717c357bfc7ec83e6cfab5e14cd` |
| 26 | `theorem` | [norm_pos](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/norm-pos.md) | 176 | `result-track:b1de635ad43252f07656f5bf064eb314a3db21f4fad6159fbdb937c227b19f06` |
| 27 | `theorem` | [abs_coe_nat_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/abs-coe-nat-norm.md) | 180 | `result-track:08b537fe936f95ad435bf6ba154987245bd7a280e8f907f7451aa2d1a299736b` |
| 28 | `theorem` | [nat_cast_natAbs_norm](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/nat-cast-natabs-norm.md) | 185 | `result-track:81a06927d66b28ed1dcf83e102b8c8929e051608aae3eec886ba09d8ec1fd871` |
| 29 | `theorem` | [natAbs_norm_eq](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/natabs-norm-eq.md) | 189 | `result-track:6d697933f2491bc8459acb7a4fe7286ba4cb16b6ffd1648f5cc8d19a4e9a6a71` |
| 30 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/instance.md) | 194 | `declaration-track:6ef72916a47e120093b161c4f031d3cdd191098fcd0eec4a332931a6f72aef7a` |
| 31 | `theorem` | [div_def](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/div-def.md) | 200 | `result-track:1ea12f14ece92e733c6bae2bdaad0abcb69e0ac22c8849a2f3f72ed4012e5398` |
| 32 | `theorem` | [toComplex_div_re](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-div-re.md) | 205 | `result-track:0fa393bbda86525ed6c239ff64ce1ebe95c6618c3f485cec744e61a3bc3384cc` |
| 33 | `theorem` | [toComplex_div_im](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/tocomplex-div-im.md) | 210 | `result-track:3aa1709343e49dfbbd99295431e6d5f27540115e958021a82d5dbd9742ba2da2` |
| 34 | `theorem` | [normSq_le_normSq_of_re_le_of_im_le](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/normsq-le-normsq-of-re-le-of-im-le.md) | 215 | `result-track:d746e0115206b0fc0b450d8dc5a4a54fb11c23437b9a4a98822fd865ca5e5d4e` |
| 35 | `theorem` | [normSq_div_sub_div_lt_one](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/normsq-div-sub-div-lt-one.md) | 224 | `result-track:69f04376fe470646ea9961785c2836d42b49a62728c94330d9f40aa489741d2d` |
| 36 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 240 | `declaration-track:f4dce5bc0bfac468c98489966171f71cc4c4de04335630b382994168793d2447` |
| 37 | `theorem` | [mod_def](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/mod-def.md) | 243 | `result-track:f3f6f4b59809cf4d1d2ebe75c94aca6d0f2a53b7102269ec8645fb010e4e08b4` |
| 38 | `theorem` | [norm_mod_lt](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/norm-mod-lt.md) | 247 | `result-track:4437ad854bbf760d28190f85a92dc8747b19eabd65c1cf48522fd3b95943b982` |
| 39 | `theorem` | [natAbs_norm_mod_lt](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/natabs-norm-mod-lt.md) | 259 | `result-track:cccd79605907638e57a800c12f50534f365c98b34396c7433fcd136fa2862a05` |
| 40 | `theorem` | [norm_le_norm_mul_left](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/norm-le-norm-mul-left.md) | 264 | `result-track:9ee76ef5dd6ea8d5d45fa5c5704fa121b0a5b903905ab4f3e72fa18ce68d711d` |
| 41 | `instance` | [instNontrivial](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/instnontrivial.md) | 272 | `declaration-track:c9860846da742635515b95f676470de3f0a3b52f419d9d3abb70fe695419c1b1` |
| 42 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 276 | `declaration-track:c7f6405f82033d688a5a1fc98e733f36a8f1de12020d781cfdfa90e3b73ce1c4` |
| 43 | `theorem` | [sq_add_sq_of_nat_prime_of_not_irreducible](../../../../NumberTheory/ZsqrtdGaussianIntGaussianIntNamespacedSourceEdition1.lean/declarations/sq-add-sq-of-nat-prime-of-not-irreducible.md) | 290 | `result-track:776b1f578e15e47f34eba1578f0f7213fd01344fd9b0a764eba7ce951bc48ff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0630a88cdb6418b83f85ce65c38da66cd5b26e0c43e76f2b774b5d8f63550486 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GaussianInt/Variant2bf9698ed9a9349cab4c9d1186702233e199ac49e0e225740daccfdcc2536614.lean","GRWTSK/_verification/specifications/Algebra/GaussianInt/Variant2bf9698ed9a9349cab4c9d1186702233e199ac49e0e225740daccfdcc2536614.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
