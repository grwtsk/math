# All Public Discovery Alternative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d34de164ded1a58b09d0139fe6883a698410068` · SHA-256 `883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope
import FormalResearch.RiemannHypothesis.ThetaTailLogSlope
import FormalResearch.RiemannHypothesis.ThetaTailRankTwo

open Lean Elab Command
run_cmd do
  let targets : Array Name := #[`FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope, `FormalResearch.RiemannHypothesis.ThetaTailLogSlope, `FormalResearch.RiemannHypothesis.ThetaTailRankTwo]
  let _ ← (← getEnv).constants.foldM (init := ()) fun _ name _ => do
    let some mod ← findModuleOf? name | return ()
    if targets.contains mod && !isPrivateName name then
      logInfo m!"THETA_PUBLIC_DECL|{mod}|{name}"
    return ()
  pure ()
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9da9109f60e51ca39b8515002f0e83ffecf3a2da751bfc6583f819b33e1407d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487AllPublicDiscove/Variant883d9424af8bc6ffe197e2db4748b8a9ee577904ca34fc1eb21928554d17c487.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
