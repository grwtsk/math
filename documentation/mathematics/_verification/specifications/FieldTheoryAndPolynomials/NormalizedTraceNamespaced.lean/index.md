# Verification target: Normalized Trace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "665dd20ba8c0d7972d58627cfb325be0782f59b9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `665dd20ba8c0d7972d58627cfb325be0782f59b9`.

Source path: `GRWTSK/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Trace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTraceAux](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtraceaux.md) | 51 | `declaration-track:5849a3435e1212e482326c4ca149838a4f53e2672f3a5eef8d46131e0e055f9d` |
| 2 | `theorem` | [normalizedTraceAux_def](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtraceaux-def.md) | 54 | `result-track:5f932cd19b2fef443020882cd8036ab51c682802e8ed758700a9b94f8efefe9e` |
| 3 | `theorem` | [normalizedTraceAux_map](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtraceaux-map.md) | 57 | `result-track:1a2af4928a542edaabf478e08a2e81ac28b389948d608fd9c7a01f20ecf5d7d4` |
| 4 | `theorem` | [normalizedTraceAux_intermediateField](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtraceaux-intermediatefield.md) | 64 | `result-track:611c7a5066892f9076163d431f045babcd47f22f50bb4f09d9c002a3f88c90ce` |
| 5 | `theorem` | [normalizedTraceAux_eq_of_fininteDimensional](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtraceaux-eq-of-finintedimensional.md) | 71 | `result-track:80eaf20bcc765573cb42d049c2cd5f148386bc5db35ac8c62a4ecc7341300a03` |
| 6 | `def` | [normalizedTrace](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace.md) | 82 | `declaration-track:a87277f6b0946d4515402a51e4df5f268bc6ac91b8089ed57ee44e4a2f5d6e57` |
| 7 | `theorem` | [normalizedTrace_def](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-def.md) | 115 | `result-track:2a78294034fac6b888da566e08821718fa30a689de2d8dfb0a6e7d9ce39e165d` |
| 8 | `theorem` | [normalizedTrace_minpoly](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-minpoly.md) | 122 | `result-track:dd9ba60117cc5d58e337a016658f4c6f36afe5dd8b82e365f1ad6a7d4a80a2bd` |
| 9 | `theorem` | [normalizedTrace_self_apply](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-self-apply.md) | 128 | `result-track:61a3c7ad7d35c15fc00e333c631b3f94243295993ae87c5af239c7523f819bde` |
| 10 | `theorem` | [normalizedTrace_self](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-self.md) | 134 | `result-track:fa3ace8613265641660656a07cf5f1cd8925d3b5f43e461ddb6e3992f428c081` |
| 11 | `theorem` | [normalizedTrace_eq_of_fininteDimensional_apply](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-eq-of-finintedimensional-apply.md) | 138 | `result-track:b16d59c494115aa4d1a5d555a185adf8af0ab1344c69217cdbc47fae9d1ebd7c` |
| 12 | `theorem` | [normalizedTrace_eq_of_fininteDimensional](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-eq-of-finintedimensional.md) | 142 | `result-track:d52041c7c885ed0b698d44d09984674c2978d35f9dd142c5951b4c76fe3eb258` |
| 13 | `theorem` | [normalizedTrace_map](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-map.md) | 148 | `result-track:4e616d110b35a51dc02f140298b25ce7c9e62f830d92ae0bd13baed5b1aca42f` |
| 14 | `theorem` | [normalizedTrace_intermediateField](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-intermediatefield.md) | 153 | `result-track:9b6d84ba117cce27723d247c7a94be926778a5316f6176844febfbb611533348` |
| 15 | `theorem` | [normalizedTrace_algebraMap_apply](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-algebramap-apply.md) | 165 | `result-track:ae6bdb15eb0d2547df52324166b4a671dec17d7097a49f38e5424052d33db9f8` |
| 16 | `theorem` | [normalizedTrace_algebraMap](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-algebramap.md) | 170 | `result-track:078e16a8b88af70ef084829a3fe40500ec434374dca73af8f343ee7a1f1201b4` |
| 17 | `theorem` | [normalizedTrace_algebraMap_of_lifts](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-algebramap-of-lifts.md) | 177 | `result-track:27d425bbf666f21e270d0d48f54ab50fb36853ecf208860e2667a20f99205c6a` |
| 18 | `theorem` | [normalizedTrace_trans_apply_aux](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-trans-apply-aux.md) | 189 | `result-track:810a8238d82e9218b952fdf6ec1fd68850b7e3309065eb2e3bf71fdac86dea82` |
| 19 | `theorem` | [normalizedTrace_trans_apply](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-trans-apply.md) | 210 | `result-track:4512c9c712fd801d172402a8d7793e4d7124e95724e59b2f4087771f35a01adf` |
| 20 | `theorem` | [normalizedTrace_trans](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-trans.md) | 226 | `result-track:df489ef7934a1cb9d68dfce0bef6b2b01bdaebae3168ce9cea9de617d12f0f27` |
| 21 | `theorem` | [normalizedTrace_algebraMap_apply_eq_self](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-algebramap-apply-eq-self.md) | 232 | `result-track:5bd1c51c8f4e2a3cc1c424d4bc5a066d494e62c6993f903812ad824064752c59` |
| 22 | `theorem` | [normalizedTrace_algebraMap_eq_id](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-algebramap-eq-id.md) | 236 | `result-track:43080e98605113dd6015479ccf7c952b970e9eb85356f70dce7c911395c437ea` |
| 23 | `theorem` | [normalizedTrace_comp_algHom](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-comp-alghom.md) | 242 | `result-track:2f4157d968e6c79c9e2cb7c7fb75853b63100eb5d2639cd54a805303240ea3cd` |
| 24 | `theorem` | [normalizedTrace_surjective](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-surjective.md) | 246 | `result-track:c533528981165dd0d37c1da9d852af485ba75eec7005de790b865ba432260f6f` |
| 25 | `theorem` | [normalizedTrace_ne_zero](../../../../FieldTheoryAndPolynomials/NormalizedTraceNamespaced.lean/declarations/normalizedtrace-ne-zero.md) | 250 | `result-track:c2e7fee2115e87d795c0628499a6f16e7c3fdb3603b9dc7c86bfbc0d0ddbb01a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e431eeb2101aff3bcc4c28d96c08599c4471491198af2f98852e96d3ea0ba71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean","GRWTSK/_verification/specifications/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
