# Helpdesk @ Concurrency and Parallelism Laboratory

Here is the helpdesk of the [Concurrency and Parallelism Laboratory](https://cp.kaist.ac.kr) at
KAIST School of Computing. We will try to answer your questions as far as we can!


## Specialty

We have expertise on [Rust](https://www.rust-lang.org/), [Coq](https://coq.inria.fr/), and
concurrent programming.

- To study [Rust](https://www.rust-lang.org/), we strongly recommend you to start with ["the
  book"](https://doc.rust-lang.org/book/). The entire book is worth reading. Read the book,
  implement some Rust code on your own, and ask any questions you've got to have.

- To study [Coq](https://coq.inria.fr/), we strongly recommend you to start with [Software
  Foundations](https://softwarefoundations.cis.upenn.edu/) Volume 1: Logical Foundations. You can
  clone [this mirror](https://github.com/kaist-cp/software-foundations/tree/master/lf). Don't skip
  (too many) exercises---they are the essence of the book. You can learn how to install Coq and setup your IDE [here](coq/README.md).

- To study concurrent programming, we strongly recommend you to take [KAIST SoC CS492A: Concurrent
  Programming](https://github.com/kaist-cp/cs492-concur).


## How to ask questions?

Please search for the [issue tracker](https://github.com/kaist-cp/helpdesk/issues) and see if your
question is already answered. If not, ask your question in the issue tracker.

The content should be clear enough so that we can easily help you. Don't ask the solutions to the
exercises. Don't upload images of codes. Format your content using [GitHub's Markdown
manual](https://guides.github.com/features/mastering-markdown/). Especially pay attention to
properly formatting `code`.


## Please contribute to the community

Your participation would be greatly appreciated. Please watch this repository, and if there are some
questions you can answer, please do so. Your help will make the helpdesk much more scalable.


## Advice for lab members

### What is Research?

> "Research is what I am doing when I don't know what I am doing," Wernher von Braun

The defining characteristic of research is everything---from motivation to methods to evaluation to
goal---is tentative: in the middle of doing research, you don't know what will be the end result. As
a consequence, a researcher will suffer from:

- **Failure everyday**. You don't know what you're doing, so you'll fail almost always. To deal with
  the frustration from such failures, you should be mentally tough enough to tolerate such
  frustration. If successful, from time to time you will be able to understand or design small
  things, which accumulate to a paper and a thesis.

- **Changing plans**. You don't know what you're doing, so your goal will be changing as you make
  progress on your project. So any long-term plan is destined to be significantly revised. Thus you
  should think of the goal as a ever-moving target, the current version being just the best possible
  approximation of the actual end result. Your goal should be neither too concrete nor too abstract:
  if too concrete, it will not be resilient to the revision; if too abstract, it will not guide your
  research.


### Communication

All communication (except for Mattermost and face-to-face meeting) is **asynchronous**: the receiver
is not required to reply promptly. Mattermost chat in work hours is supposed to be synchronous: the
receiver is requested to reply promptly.


#### Registration

When you first come to the lab, please do the following instructions:

- Create {firstname}.{lastname}@kaist.ac.kr email account.
    + You can add "additional account" in mail.kaist.ac.kr > Settings > My Account > Additional account.
    + If it is already taken, add a number at the end of the id, e.g., {firstname}.{lastname}07@kaist.ac.kr
- Send your email address and GitHub ID to jeehoon.kang@kaist.ac.kr.
- Your GitHub ID will be invited to `kaist-cp` organization.
- You'll get {firstname}.{lastname}@cp.kaist.ac.kr G Suite account.
- You'll get a Mattermost account in [https://cp-service.kaist.ac.kr/mm](https://cp-service.kaist.ac.kr/mm).


#### Email

- Use {firstname}.{lastname}@kaist.ac.kr email account for all work emails. (**not cp.kaist.ac.kr !**)
- Forward all {firstname}.{lastname}@kaist.ac.kr emails to {firstname}.{lastname}@cp.kaist.ac.kr and
  check emails in [Gmail](https://www.gmail.com).
- Configure the Gmail account to send from {firstname}.{lastname}@kaist.ac.kr.    
  - Go to https://mail.kaist.ac.kr > Settings - enable **SMTP**.
  - Go to [Gmail](https://www.gmail.com) > Settings > Click **See all settings** > **Accounts** > Click **Add another email address** > Add {firstname}.{lastname}@kaist.ac.kr and set it as the default address > Set **Always reply from default address**

- Write [proper formal emails](https://www.wikihow.com/Write-a-Formal-Email). (__important!__ do not markup emails.)
- Try to reply within 12 hours.


#### Calendar

- Use {firstname}.{lastname}@cp.kaist.ac.kr account for calendar and other G Suite applications.
- If you want to have a meeting, just directly invite the others in [Google
  Calendar](https://calendar.google.com). In the invitation, write the purpose of the meeting.


#### GitHub

- All work should be done in the [`kaist-cp` organization](https://github.com/kaist-cp).
- If you want to create a new repository, ask Jeehoon.
- Get email notification for mentions and issue/PR comments.


#### Mattermost

- Instant messaging service at https://cp-service.kaist.ac.kr/mm.
- Try to reply promptly in work hours. (No need to reply in other times.)
- At the beginning of each work day, briefly state what you'll do that day at [this
  channel](https://cp-service.kaist.ac.kr/mm/cp/channels/one-line-a-day).


#### Face-to-face meeting

- Before asking for a meeting, write down a short meeting agenda and share it.

- In the agenda, clearly state the purpose of meeting.  It can be, but not limited to: (1) reporting
  the progress, (2) asking questions/opinions, or (3) just chatting.

- Try to be direct, top-to-bottom, and conclusion-first (e.g., not "A, so B, so C", but "C, because
  B, because A").

- If you have multiple things to discuss, enumerate them at the beginning of a meeting for better
  planning of the meetings.


### First things to do

- Use the following devices (**IMPORTANT: no password should be written here. It's a public repository.**):

    + WiFi: `kaist-cp` at Rm. 4441, Bldg. E3-1, KAIST

    + Printer: `HP Color LaserJet Pro MFP M479fdw`; `10.12.255.2` in the WiFi network; AirPrint protocol

    + Server: `ssh -p<port> <g-suite-id>@cp-service.kaist.ac.kr` (e.g., `ssh -p11001 jeehoon.kang@cp-service.kaist.ac.kr`)

        * port: 11001, password: \<g-suite-password\>

        * `/kaist-cp-home/<g-suite-id>` is the home directory, but it's network-mounted.
          Run `sudo kaist-cp-refresh.sh`, then you'll have `/local-home/<g-suite-id>` in the local SSD.

        * If you want to install additional packages, make a PR to [this
          repository](https://github.com/kaist-cp/infra-public/tree/master/sandbox-20.04), and after the
          PR is merged, run `sudo kaist-cp-refresh.sh`.

    + Desktop: login with your G Suite account

        * If you want to install additional packages, make a PR to [this
          repository](https://github.com/kaist-cp/infra-public/tree/master/desktop), and after the
          PR is merged, run `/usr/bin/install-packages`.

        * Configuring Hangul input method

            * Using Ibus (Ubuntu default) (**NOT recommended**. Use nimf instead.)
                1. Alt+F1 and search "Region & Language" > Input Sources > + > Korean > Korean (Hangul)
                1. Alt+F1 and search "Region & Language" > Input Sources > English (US) > Remove
                1. You can switch between Korean/English input method by pressing shift+space.

            * Using [nimf](https://github.com/hamonikr/nimf/)
                1. In "Region & Language" > Input Sources, remove other input sources and leave English (US) only.
                1. To check if nimf is installed, run `nimf-settings`. If it's not installed, run `/usr/bin/install-packages`.
                1. Run `im-config -n nimf` and reboot. Ensure that `nimf` process is running.
                1. Configure nimf with `nimf-settings`.
                   In "XKB options > Korean Hangul/Hanja keys", set "Make right Alt a Hangul key".
                   In "Nimf > Hotkeys for rotating input method engines", add "Hangul".
        
        * (If needed) Create a virtual machine with [virt-manager](https://virt-manager.org/)
            1. Download the ISO image of the virtual machine.
            1. Run `virt-manager`. If it's not installed, run `/usr/bin/install-packages`. If you get "Unable to connect to libvirt" error, reboot the desktop.
            1. To create a new virtual machine, right-click "QEMU/KVM" and click "NEW". Please note that you can choose your ISO image by clicking "Browse..." and "Browse Local" in "Step 2 of 5".
    
    + (If needed) Lab VPN

        * You can access the network inside the lab by running `ssh -p11000 <g-suite-id>@cp-lab.kaist.ac.kr` (e.g., `ssh -p11000 jeehoon.kang@cp-lab.kaist.ac.kr`)
        * You can jump right into lab resources using `-J` ([`ProxyJump`](https://www.redhat.com/sysadmin/ssh-proxy-bastion-proxyjump)) option. (e.g.,  `ssh -J jeehoon.kang@cp-lab.kaist.ac.kr:11000 user@target-internal-ip` )
        * Since editors are not installed on the VPN instance, use `scp` to edit `.ssh/authorized_keys`. (e.g., `scp -P11000 ~/.ssh/authorized_keys jeehoon.kang@cp-lab.kaist.ac.kr:~/.ssh`)

- Create your website at https://cp.kaist.ac.kr/{firstname}.{lastname}.
  - Fork [our website repository](https://github.com/kaist-cp/kaist-cp.github.io) and clone it.
  - Install dependent libraries and run a local server to test by following commands:
        ```bash
        # Make sure Ruby is installed.
        $ bundle install
        $ bundle exec jekyll serve
        ```
  + Add your meta information(name, status, github ID, etc.) to `people.yml`.
  + Make a new file `{firstname}.{lastname}.md` under the directory `_people/`.
  + Write your concrete information on the `{firstname}.{lastname}.md`. I recommend you refer to `_people/jeehoon.kang.md`.
  + Make a commit, push it and PR.

- Make sure you know how to use Git. FYI, [this tutorial](https://www.atlassian.com/git/tutorials) is a good introduction.

- Read how to read papers and give talks by [Dr. Derek Dreyer](https://people.mpi-sws.org/~dreyer/):
  + [How to write papers so people can read them](https://people.mpi-sws.org/~dreyer/talks/talk-plmw16.pdf), PLMW@POPL 2016
  + [How to give talks that people can follow](https://people.mpi-sws.org/~dreyer/talks/talk-plmw18popl.pdf), PLMW@POPL 2018
  + [How to write papers and give talks that people can follow](https://people.mpi-sws.org/~dreyer/talks/talk-plmw17icfp.pdf), PLMW@ICFP 2017

- Study [Rust](https://www.rust-lang.org/) or [Coq](https://coq.inria.fr/) depending on your
  research interest. See https://github.com/kaist-cp/helpdesk/#specialty for more details.

