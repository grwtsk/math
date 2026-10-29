# Verification target: Monad To PMFDirac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e748958a2772d5c7c02821a8c7b47df399ab356c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant79c396cb5e60929456c3be5850b23858e13d6f152b6b38bba1fa810019885dfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e748958a2772d5c7c02821a8c7b47df399ab356c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant79c396cb5e60929456c3be5850b23858e13d6f152b6b38bba1fa810019885dfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Monad/Variant79c396cb5e60929456c3be5850b23858e13d6f152b6b38bba1fa810019885dfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pure](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/pure.md) | 37 | `declaration-track:c28d08ea490a1dec974e7e186b029ab7df03b4e82cecd3c8e3825d1ec26be3a9` |
| 2 | `theorem` | [pure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/pure-apply.md) | 44 | `result-track:8d5ba2e72d9eddf730aeee2ed4d484a65277fa941335152139d0b1bcd39d8855` |
| 3 | `theorem` | [support_pure](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/support-pure.md) | 47 | `result-track:b29a7ccba672209e8e02872a51fc97fc4b6b1a92478893eef4e7e632e1838d6a` |
| 4 | `theorem` | [mem_support_pure_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/mem-support-pure-iff.md) | 50 | `result-track:8ba44bfea59477c9af1fd53d1639701b823e3b1724bef0df71b5e95c7e055aad` |
| 5 | `theorem` | [pure_apply_self](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/pure-apply-self.md) | 52 | `result-track:44a6a8f88116fbb3c5d14530137ea54c70f62afd05161bbce1001b4894b4b317` |
| 6 | `theorem` | [pure_apply_of_ne](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/pure-apply-of-ne.md) | 55 | `result-track:e53d9143ce3dbacb53a0fca8f24d82bc0ef9198482b11ee20c829ae8b5cf6bb3` |
| 7 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:b5cc01f332104a79b6c0ca65dc27002894c8819c7d83df8f3ba6e42036d4869c` |
| 8 | `theorem` | [toOuterMeasure_pure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/tooutermeasure-pure-apply.md) | 67 | `result-track:807e3ad5a6b0d8a3caf1ef4cc949188583235bea962148670fe7d3ff47ec6f34` |
| 9 | `theorem` | [toMeasure_pure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/tomeasure-pure-apply.md) | 82 | `result-track:875f8007f6c96be24f5d63256f46c4f5fa86542c2b2f36c55bd81d6182e263f7` |
| 10 | `theorem` | [toMeasure_pure](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/tomeasure-pure.md) | 86 | `result-track:79eaeb112f67398b1c82e249edf591e5abdfe736ecfe57fa761f62fa6f58e7c3` |
| 11 | `theorem` | [toPMF_dirac](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/topmf-dirac.md) | 90 | `result-track:abe1ebf19cafeaffe5ab157d2841f689434e7e38b5adc8ea835cb46f10c3b4a7` |
| 12 | `def` | [bind](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bind.md) | 101 | `declaration-track:4a3bae1e46df2d314828a3ccaf38d8714dc9b695edace478c3755c698f1b2e81` |
| 13 | `theorem` | [bind_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bind-apply.md) | 109 | `result-track:5eb1c9785531f2a1855dad8d65322a60632e671a7b59155749123eae96310309` |
| 14 | `theorem` | [support_bind](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/support-bind.md) | 112 | `result-track:5fa2c59ecfc2557bf94fe05bf5773d8c44c67feb51499dc1c2543c683691dcc4` |
| 15 | `theorem` | [mem_support_bind_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/mem-support-bind-iff.md) | 115 | `result-track:ea0660fc9425177f7ca369fc37b633882539f683f6977e33391c14705b7f7c46` |
| 16 | `theorem` | [pure_bind](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/pure-bind.md) | 120 | `result-track:c28919c248d0c9f2f07d138fad9b21b67c18d62c9261fd08a4624759699fc216` |
| 17 | `theorem` | [bind_pure](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bind-pure.md) | 128 | `result-track:147c742bc838a66fa18561d0a9476cd5b769a7f9e3d5f920893e7d325f3d7bd4` |
| 18 | `theorem` | [bind_const](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bind-const.md) | 134 | `result-track:4ceefba2abd558d0c07edfcb80ea7bf227e8a7ce5c27e485e1a8bd519fb2f937` |
| 19 | `theorem` | [bind_bind](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bind-bind.md) | 138 | `result-track:e35716c87167cc5ab93a8eae8b68df3a942ff41f4cb75c8777d77589d30f4393` |
| 20 | `theorem` | [bind_comm](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bind-comm.md) | 143 | `result-track:e78ea4f484c48327d9d041e18f7285bdcec5b6653538d67067b085b66b23207e` |
| 21 | `theorem` | [toOuterMeasure_bind_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/tooutermeasure-bind-apply.md) | 154 | `result-track:17f70eeb1cfc65c823216726c18b4e1bc82a9f173d2ff3638a68254f33d58e6a` |
| 22 | `theorem` | [toMeasure_bind_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/tomeasure-bind-apply.md) | 171 | `result-track:fdccbf270cc847589291566c07d34043fdebb04fd92a44f1f1bf239957bb56ae` |
| 23 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/instance.md) | 182 | `declaration-track:030cd8b5d8ab43364d82471d0b12120f17cd41f93a59bb792e900abf1ca9249b` |
| 24 | `def` | [bindOnSupport](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bindonsupport.md) | 190 | `declaration-track:b4da086d2237df10b80816f9aa2736d61ecec1fd7a99aede34767334362c94dd` |
| 25 | `theorem` | [bindOnSupport_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bindonsupport-apply.md) | 201 | `result-track:8ba7ca0dcfd021e9fc21a052f611efef1f263e62f45988c741e6208d8d864408` |
| 26 | `theorem` | [support_bindOnSupport](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/support-bindonsupport.md) | 205 | `result-track:6cafb708403a9bcab224600abff9cb437047f0c44e1ec3ed116b8616b9eed5f4` |
| 27 | `theorem` | [mem_support_bindOnSupport_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/mem-support-bindonsupport-iff.md) | 218 | `result-track:2e8c6c3df379e2581b4af2ddc48bc4cdb2832712573578c5f642c23880ac553d` |
| 28 | `theorem` | [bindOnSupport_eq_bind](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bindonsupport-eq-bind.md) | 224 | `result-track:4467d7c3331f270f104b2ca72bf985f00436f29cc8386c72f3f77b4447315772` |
| 29 | `theorem` | [bindOnSupport_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bindonsupport-eq-zero-iff.md) | 232 | `result-track:a636bdd36f88af3f5461ddd0bd3583b4f939139d17eeb7ed5dd97b780c2773ab` |
| 30 | `theorem` | [pure_bindOnSupport](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/pure-bindonsupport.md) | 239 | `result-track:b292b3320144c2706a15eb0ed6e3345f1339b177306438c66ff91f931378f4bd` |
| 31 | `theorem` | [bindOnSupport_pure](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bindonsupport-pure.md) | 247 | `result-track:f55ad2a8b539b3d3f58d2474eeaedfc4235cc78106dce1da981d5566e8b97fb3` |
| 32 | `theorem` | [bindOnSupport_bindOnSupport](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bindonsupport-bindonsupport.md) | 251 | `result-track:81923930754d7aae7d315e0a053ed62e7eb61d167497c18fcd438bc0c1052914` |
| 33 | `theorem` | [bindOnSupport_comm](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/bindonsupport-comm.md) | 270 | `result-track:1e48602f5fff25a2c7cf0cad7a8748d4f1abbf13aed1696217f38945cb3bd11c` |
| 34 | `theorem` | [toOuterMeasure_bindOnSupport_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/tooutermeasure-bindonsupport-apply.md) | 284 | `result-track:2bb0cef47eab26e1b5f0c9f53088bebafa00aa392f0058259ea0d5f4428007b2` |
| 35 | `theorem` | [toMeasure_bindOnSupport_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MonadToPMFDirac.lean/declarations/tomeasure-bindonsupport-apply.md) | 304 | `result-track:502d21a6635d2e7368119c017d068664f77ab8f740c1237f4ddbe199a8e71437` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4eeba22dd378181f03433609ad10ce1e8fa25c3308d413c6da188ce00644ca69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant79c396cb5e60929456c3be5850b23858e13d6f152b6b38bba1fa810019885dfa.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Monad/Variant79c396cb5e60929456c3be5850b23858e13d6f152b6b38bba1fa810019885dfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
