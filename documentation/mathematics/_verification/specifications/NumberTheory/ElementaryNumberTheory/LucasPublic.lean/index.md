# Verification target: Lucas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31bd1f8d0f7f96128a4942ec32890ae7c8adf169",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31bd1f8d0f7f96128a4942ec32890ae7c8adf169`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [choose_modEq_choose_mod_mul_choose_div](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/choose-modeq-choose-mod-mul-choose-div.md) | 38 | `result-track:cd4c25961172f4ceda44c0514183c2f0fe6396e66c26be63a4ad2bb43411e8a5` |
| 2 | `theorem` | [choose_modEq_choose_mod_mul_choose_div_nat](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/choose-modeq-choose-mod-mul-choose-div-nat.md) | 68 | `result-track:ac2c7db62a87960b8b60acd91fd19d5ec144928e613e16878ef11e399fb841ac` |
| 3 | `theorem` | [choose_modEq_choose_mul_prod_range_choose](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/choose-modeq-choose-mul-prod-range-choose.md) | 75 | `result-track:220f2116cf3a3c857d5cff8e79ba89385cb749831e66ed53bf8782244fc473c7` |
| 4 | `theorem` | [choose_modEq_prod_range_choose](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/choose-modeq-prod-range-choose.md) | 88 | `result-track:979d9a68efdf46fe6004ad80cacdfc32eaa868347515f4f4141568e2f2117a81` |
| 5 | `theorem` | [choose_modEq_prod_range_choose_nat](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/choose-modeq-prod-range-choose-nat.md) | 96 | `result-track:c1cf5eefe1f6e4eca83f2885ac179b0ecf504abbf7a7e588e404274769b9d3f7` |
| 6 | `theorem` | [choose_mul_mul_modEq_choose](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/choose-mul-mul-modeq-choose.md) | 106 | `result-track:ba9de10629228ac1a034b8a85f16419ed4572111512ee55525ba6d37b25a659d` |
| 7 | `theorem` | [choose_mul_mul_modEq_choose_nat](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/choose-mul-mul-modeq-choose-nat.md) | 113 | `result-track:92fa827ea1a6cf5cb8a27cbd447a75045572c4c1a22e8329c2df5e212a70259d` |
| 8 | `theorem` | [choose_pow_mul_pow_mul_modEq_choose](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/choose-pow-mul-pow-mul-modeq-choose.md) | 120 | `result-track:c31de4629aaed5fd31edb66f245de1ef983619251ce17428e170818d83f03e2a` |
| 9 | `theorem` | [choose_pow_mul_pow_mul_modEq_choose_nat](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/choose-pow-mul-pow-mul-modeq-choose-nat.md) | 129 | `result-track:06e0520db14fdca56567f154ef09d9df6fc33b95d710b89f4a284783c085bf35` |
| 10 | `theorem` | [eq_pow_multiplicity_of_choose_modEq_zero](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/eq-pow-multiplicity-of-choose-modeq-zero.md) | 137 | `result-track:541757af4c91b25195edf787ba6ab7f30acc8801f6b4628f5d6f9494a4f84c40` |
| 11 | `theorem` | [eq_pow_multiplicity_of_choose_modEq_zero_nat](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/eq-pow-multiplicity-of-choose-modeq-zero-nat.md) | 153 | `result-track:a1ef50cd38410d2d01e943158390063e43236ee3d15d05a8c08c436e70a3421c` |
| 12 | `theorem` | [minFac_dvd_gcd_choose_of_isPrimePow](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/minfac-dvd-gcd-choose-of-isprimepow.md) | 159 | `result-track:69f8c77c472557af43eab3d8dd2c269854161ac038996cc413c0605020d14b9f` |
| 13 | `lemma` | [minFac_sq_ndvd_gcd_choose_of_isPrimePow](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/minfac-sq-ndvd-gcd-choose-of-isprimepow.md) | 166 | `result-track:33e62ebe007533a0f2549bd6345bf0d9c70427bc58d8761cd5db02c5b5562ce2` |
| 14 | `lemma` | [primeFactors_gcd_choose_of_isPrimePow](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/primefactors-gcd-choose-of-isprimepow.md) | 184 | `result-track:d299ce874861c97b982839d31d9406de7fea21488a03469a1827c4c1d3a0e1c6` |
| 15 | `theorem` | [gcd_choose_eq_minFac_of_isPrimePow](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/gcd-choose-eq-minfac-of-isprimepow.md) | 202 | `result-track:d7d9b4d21971d52b353e85b827d94d810e84744bfc8245ca5b43124aac922066` |
| 16 | `theorem` | [gcd_choose_eq_one_of_not_isPrimePow](../../../../../NumberTheory/ElementaryNumberTheory/LucasPublic.lean/declarations/gcd-choose-eq-one-of-not-isprimepow.md) | 215 | `result-track:35774e37e59e9a0f89efca17e581158ff43e63894c00ff1e8207b335acb29c94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=756e26f6edfcac6a9af7c7b9b74d1963ec9c53e50e902ede4f1d79dc04727112 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
