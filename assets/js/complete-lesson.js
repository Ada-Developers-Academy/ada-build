(function () {

  class LessonApi {
    constructor(baseUrl) {
      this.baseUrl = baseUrl;
    }

    async completeLessonApi(lessonID, learnerID) {
      const response = await fetch(`${this.baseUrl}completion/`, {
        headers: {
          'Content-Type': 'application/json',
        },
        method: 'POST',
        body: JSON.stringify({
          lesson: lessonID,
          u: learnerID,
        }),
      });

      if (response.status !== 200) {
        throw new Error('The request could not be completed. Try again later.');
      }

      return await response.json();
    }
  }

  function registerEvents() {
    const kActiveResult = 'active-result';
    const kNotLoading = 'not-loading';

    const frmLesson = document.getElementById('ada-build-form-lesson');
    const txtLearnerID = document.getElementById('ada-build-input-learner-id');
    const successMsg = document.getElementById('ada-build-success-message');
    const errorMsg = document.getElementById('ada-build-error-message');
    const spinner = document.getElementsByClassName('lds-spinner')[0];

    const completeLesson = async (lessonID, learnerID) => {
      successMsg.classList.remove(kActiveResult);
      errorMsg.classList.remove(kActiveResult);
      spinner.classList.remove(kNotLoading);

      try {
        const baseUrl = frmLesson.dataset.baseUrl;
        const api = new LessonApi(baseUrl);
        await api.completeLessonApi(lessonID, learnerID);
        successMsg.classList.add(kActiveResult);
      } catch (e) {
        errorMsg.classList.add(kActiveResult);
      } finally {
        spinner.classList.add(kNotLoading);
      }
    }

    frmLesson.addEventListener('submit', async (e) => {
      e.preventDefault();

      const lessonID = frmLesson.dataset.lessonId;
      const learnerID = txtLearnerID.value;

      if (!learnerID) {
        alert("Please enter your Learner ID.");
        return
      }

      await completeLesson(lessonID, learnerID);
    });
  }

  document.addEventListener('DOMContentLoaded', registerEvents);
})();
