# Verification target: Assembly Q

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97133fcbca06259ea84eb596e061c03b52f484d9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97133fcbca06259ea84eb596e061c03b52f484d9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Assembly` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.TracesHypChi` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/cq.md) | 31 | `declaration-track:5a24ae58df47bb87cc21dbc4067a04a1d055a270e5beb28c5b9a8df67db51dba` |
| 2 | `lemma` | [cq_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/cq-pos.md) | 33 | `result-track:ed47443d9dae073a57a1f9c8efc7e7499658acd5a346e50d5c8a1c29b492c820` |
| 3 | `lemma` | [ell1q_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/ell1q-eq.md) | 37 | `result-track:5ab63bbf9188a92028eb65983b97562c2702ed6ec7070a60762ce248a2556a2d` |
| 4 | `lemma` | [ell1q_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/ell1q-pos.md) | 44 | `result-track:45d0e286928cd94fc083f7348f01b990decdfdbcdd230e9886d59edfcf964ec9` |
| 5 | `lemma` | [lam1q_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/lam1q-eq.md) | 47 | `result-track:460a11110e3a3e65f6baf5ef7de4c55e98328cc2b721894c32483304b077dd1c` |
| 6 | `lemma` | [lam1q_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/lam1q-le.md) | 55 | `result-track:afd9d39abaf6618aca42a3c8dc76d09b433e8154cb47023413c323f076cc196f` |
| 7 | `lemma` | [sub_lam1q_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/sub-lam1q-le.md) | 62 | `result-track:abaec60d98e3429d41b74430c84da701b80104ef83468565baa45bde7761b974` |
| 8 | `lemma` | [lam1q_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/lam1q-pos.md) | 72 | `result-track:525992d23afa6be88e2af48487454ae6cb07dde5c91ba4cb4fa3d8b4817e9538` |
| 9 | `theorem` | [Hfun_lam1q_ge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/hfun-lam1q-ge.md) | 78 | `result-track:8328a7134cfe1d9441f4d28a4298b8df62d8e21a607292d0798d6b45c7a23ee7` |
| 10 | `theorem` | [Ffun_lam1q_ge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/ffun-lam1q-ge.md) | 92 | `result-track:857fdf5c3629a9a209cf332ea26e6cc32562ba0cd94e458d586760263989cec3` |
| 11 | `lemma` | [eventually_N_ge_chi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/eventually-n-ge-chi.md) | 113 | `result-track:d686f3a65c10f0da67502b03492a0b76d12042ebd444b7bbc2b82e6113309377` |
| 12 | `lemma` | [eventually_N_le_chi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/eventually-n-le-chi.md) | 135 | `result-track:8cf2c8b71454b3a812dee5ce4826f7f70e10a3103036be47e318a7f88dea156a` |
| 13 | `lemma` | [tendsto_N_atTop_chi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/tendsto-n-attop-chi.md) | 167 | `result-track:618ed269f7781a28ad8c58b4a8353b89abbfaec92d6dc6933f44647314c7c6a2` |
| 14 | `lemma` | [isLittleO_N_of_isLittleO_Tl_chi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/islittleo-n-of-islittleo-tl-chi.md) | 172 | `result-track:7cf19838898ddbdd30dc919f1b21745f88d76f288a9da757795bc2cadec9aeae` |
| 15 | `lemma` | [eventually_clam_bounds_chi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/eventually-clam-bounds-chi.md) | 184 | `result-track:bd15dcc8fa14942316b340795c6a3413f3c7b5d00ab5714c8efd54db6f83155f` |
| 16 | `def` | [GpChi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/gpchi.md) | 216 | `declaration-track:f8df1b115e68665ae5cae1ce4eb38067643b2f031c94d758479fd429421d30d8` |
| 17 | `lemma` | [GpChi_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/gpchi-ishermitian.md) | 219 | `result-track:dce4714bfd11ae3d41632dc139fcb1c7215664b853ad80b8964d89ecc09dfb5d` |
| 18 | `lemma` | [rtrace_tilde_GpChi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/rtrace-tilde-gpchi.md) | 225 | `result-track:f49b3ed99bf0a66211a650477ba31db0f3962a235029b812384de2a8d4794275` |
| 19 | `lemma` | [frobSq_tilde_GpChi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/frobsq-tilde-gpchi.md) | 230 | `result-track:363b0d48eaae51c35e9a50c6b6bbfb3b7d7aa683f19211e2966aa6c53bb5154e` |
| 20 | `theorem` | [seamBChi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/seambchi.md) | 238 | `result-track:436022a8880e0efdfa1cf49384441f4f0750c8eb8500ed3d5a57d66fbb7f1b1a` |
| 21 | `theorem` | [thmE_A_abstract](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/thme-a-abstract.md) | 269 | `result-track:297942bc45cecdb9d7a69fd5bfb1d0e0e8236684e8846ae3f0c1ef1847c41209` |
| 22 | `theorem` | [thmE_BC_core](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyQ.lean/declarations/thme-bc-core.md) | 419 | `result-track:080dcc19c5856e3b2b2710b6b0e5c321835fe9b87eb5cd2a008a7bc34d500be2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e20e1fc96c59a46dbe36f0e335b88e4ad41c1acd4191f3eb173f7365b45de18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
