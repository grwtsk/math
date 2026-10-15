Hankel quotient bridge and retained prime discrepancy
===================================================

Direction: grwtsk contributors. Derivation and implementation: OpenAI ChatGPT. MIT.
Source base: grwtsk/math at 3def75dd484a186e529e76c382c44b1dc40b0de1.

The exact factorization H_N(F)=2 B_N H_N(a) B_N^T, B_N=(I-T_N(F))/2,
pays one inverse by the original normalization. Thus beta_N<=||K_N|| for
K_N=H_N(a)B_N^T. The derivation proves this at every finite size, supplies a
complete coefficient reconstruction error, and gives a sufficient all-depth
K_N growth target. That target is NOT established here.

The prime-power kernel is a reflected Laguerre integral, the difference of its
even and odd feature Grams. Its exact odd-channel heat debt is retained. A
negative control becomes positive if reflection is wrongly erased. A separate
Stieltjes formula retains the true discrepancy psi(x)-x+1 and cancels the
deterministic 1/(s-1) pole before taking absolute values. Treating its rank-one
Hankel contribution alone would cost exactly 9^N-1. All completion terms,
prime powers, source coefficients and boundary terms remain explicit.

The new replay independently regenerates 64 zero-time source coefficients at
512 and 640 working bits, rounds outward to a declared 160-bit matrix grid,
and forms complete 32-dimensional matrices. It certifies ||K_n||^2<7/25 and
||H_n||^2<23/50 for every 1<=n<=32 by compression. It also certifies J_N<1/600
only at N=1,2,4,8,16,32. No uncomputed tail or heat interval is certified.
This extends the repository producer's 32-coefficient calculation, not every
finite result reported in the papers.

From the repository root with requirements-tests.txt installed:

  python3 -B scripts/verify_hankel_quotient_bridge.py --mode both

The 85 tests per mode comprise 39 new exact/guard tests, 30 existing source
tests (including three numerical diagnostics), and 16 existing synthesis tests.
The historical suite is imported by unittest, so its old receipt files are not
rewritten. Both profiles are regenerated in each mode; all ten subprocesses
passed, deterministic output agrees within profiles, and all 128 source and
quotient boxes overlap across precisions. Eight inputs are pinned and rechecked.
The runner performs no network or Git writes. Git history anchors the pins;
hashes alone are not theorem proofs.

replay.json.xz contains the complete fresh JSON including every stdout/stderr
body and source report. Decode with xz -dc or Python lzma.decompress.
attempt-01.json.xz retains the first failed inventory check, its original runner,
manifest and output. results.json records scope and decoded/stored hashes.
source-ledger.json binds the source PDFs without publishing their bytes.

No active Lean module, compiler pin, existing source, workflow, canonical guide
or historical receipt is changed. Native compilation, owned-declaration audit
and full-repository checks are NOT_RUN. The continuous return and remainder
arguments have written proofs, not new kernel admission. The all-depth prime
comparison, all-height nonvanishing and RH remain unproved by this extension.
