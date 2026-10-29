# Verification target: Central Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8011966839f8b0d5773967190adfe1fded5ce51",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8011966839f8b0d5773967190adfe1fded5ce51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean.json)

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
| 1 | `def` | [centralBinom](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/centralbinom.md) | 44 | `declaration-track:0d737d511bb2f2fa2816f96067ebccf7040fc80b119c456c6c5f4c407462fc86` |
| 2 | `theorem` | [centralBinom_eq_two_mul_choose](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/centralbinom-eq-two-mul-choose.md) | 47 | `result-track:8ad36a3c772e57905be8bca37b41d168a831015f8320e1b60c524ea6092e7b48` |
| 3 | `theorem` | [centralBinom_pos](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/centralbinom-pos.md) | 50 | `result-track:b6f2062d4a4f51435ff736be07bd535aa1f3e7cd372278356854fd30dbf4076f` |
| 4 | `theorem` | [centralBinom_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/centralbinom-ne-zero.md) | 53 | `result-track:76cc4c0d5c6a37236d7b0f81d661daf8aac280c424fc859b8edec5b76517d430` |
| 5 | `theorem` | [centralBinom_zero](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/centralbinom-zero.md) | 57 | `result-track:7842322822e7f9ab38246531d7eb0fd919651900b811c9b7af8a7395771dfca4` |
| 6 | `theorem` | [choose_le_centralBinom](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/choose-le-centralbinom.md) | 62 | `result-track:136ff712679f30217c6156a6a5a001e3fe412247831d6436e29b1d161d3fe743` |
| 7 | `theorem` | [centralBinom_strictMono](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/centralbinom-strictmono.md) | 67 | `result-track:51d197fe2bdc2e880f4056fc37c64ffe8ab5b7442d0d3699f65b2b4542952788` |
| 8 | `theorem` | [two_le_centralBinom](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/two-le-centralbinom.md) | 70 | `result-track:f6fd1af95b1c99bb49de65b1afe599b0cd090ca623d5957ca6f71f505159ea4e` |
| 9 | `theorem` | [centralBinom_le_four_pow](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/centralbinom-le-four-pow.md) | 76 | `result-track:6212048d8ea7a6f0d5707c2acc655e96dc59f7b20b761b2275895f6b527f3f35` |
| 10 | `theorem` | [centralBinom_lt_four_pow](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/centralbinom-lt-four-pow.md) | 79 | `result-track:2cde7cea7fe881fa711db7145344992ef8c2fe62fbb08f130fa29f9c1e805a4d` |
| 11 | `theorem` | [succ_mul_centralBinom_succ](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/succ-mul-centralbinom-succ.md) | 86 | `result-track:c516f8c1d1cd5dc4fb9f63a47369e539f7042a753782043782c05beb3347893e` |
| 12 | `theorem` | [four_pow_lt_mul_centralBinom](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/four-pow-lt-mul-centralbinom.md) | 101 | `result-track:eca63cb5b162bc2708e28cb72d82e686d5cdc46c1e5d5ac4872e6a2f0721c2ac` |
| 13 | `theorem` | [four_pow_le_two_mul_self_mul_centralBinom](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/four-pow-le-two-mul-self-mul-centralbinom.md) | 118 | `result-track:0ebf80310c974aa68a2c23b0401c12c93ba9a1bce536812757f9651508d71429` |
| 14 | `theorem` | [four_pow_le_two_mul_add_one_mul_centralBinom](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/four-pow-le-two-mul-add-one-mul-centralbinom.md) | 131 | `result-track:d53c0f9e634f13ecd50b5dc7ba7849c28aa1e08bbdedbdf3abe6527b56d4edd4` |
| 15 | `theorem` | [four_pow_le_two_mul_add_one_mul_central_binom](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/four-pow-le-two-mul-add-one-mul-central-binom.md) | 140 | `result-track:59e485512615bdfbb75959dcdde37d79c4cea9ff4b05a60aeaa4e1ad31ee7605` |
| 16 | `theorem` | [two_dvd_centralBinom_succ](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/two-dvd-centralbinom-succ.md) | 144 | `result-track:17bbe6813628d0e59792ea6cb43e7ea41db3a99e0b6572f19d0ebda7ed39b328` |
| 17 | `theorem` | [two_dvd_centralBinom_of_one_le](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/two-dvd-centralbinom-of-one-le.md) | 149 | `result-track:549c94c130f8d2f6a9f3e83ba1f30a17186259b89c801f810314fc1a9bbc20b9` |
| 18 | `theorem` | [succ_dvd_centralBinom](../../../../../NumberTheory/ElementaryNumberTheory/CentralNamespacedPublic.lean/declarations/succ-dvd-centralbinom.md) | 155 | `result-track:8f773d33a8fa21ac91474d0a6312b10a44cae637b54fcf6424a74b889b670ae1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2a3af02740065cf21c6757061ab80037e2f323cb1d40a16b4026aaaf9b0465d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
